# Specify Base Image
FROM node:alpine

# Specifying the working directory
WORKDIR /usr/app

# Install some dependencies
COPY ./package.json ./
RUN npm install

COPY ./ ./ 

# Default command
CMD ["npm","start"]