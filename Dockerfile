FROM node:10.17.0-jessie

ENV PORT 6768

EXPOSE 6768

COPY ./node_modules ./node_modules

COPY ./google_key.json ./google_key.json
COPY ./package.json ./package.json
COPY ./package-lock.json ./package-lock.json
COPY ./tsconfig.json ./tsconfig.json

COPY ./src ./src
RUN npm run build

CMD ["node", "dist/"]
