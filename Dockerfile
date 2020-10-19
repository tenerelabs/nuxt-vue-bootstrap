FROM node:12.19.0

WORKDIR /usr/src/app

COPY package*.json ./

COPY yarn.lock ./

RUN yarn install

COPY . ./

# EXPOSE 3000

CMD ["yarn", "dev"]