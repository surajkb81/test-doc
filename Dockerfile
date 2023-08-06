FROM node:18

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo
ENV MONGODB_CLUSTER_ADDRESS ksb-cluster0.a6avd5m.mongodb.net
ENV MONGODB_USERNAME weirdguy81
ENV MONGODB_PASSWORD L0ycZIDiMUizXgqQ

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]