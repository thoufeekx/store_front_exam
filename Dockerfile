# Use an official Node.js runtime as the base image
FROM node:18

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package.json ./

# Install dependencies
RUN npm install

# Copy all files to the working directory
COPY . .

# Expose the port the app runs on
EXPOSE 8080

# Run the application
CMD ["npm", "run", "serve"]
