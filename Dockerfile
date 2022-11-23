FROM node:latest

# Working directory of the machine remote
WORKDIR /srv/app

# Copy only these files (optimization)
COPY package*.json ./

# Install app
RUN npm install
# If production (you should provide a ENV var also)
# RUN npm ci --only=production

# Bundle all app source
COPY . .

# Expose an run the app
EXPOSE 4100
CMD [ "npm", "start" ]