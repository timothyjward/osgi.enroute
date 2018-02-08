CREATE TABLE IF NOT EXISTS persons (person_id BIGSERIAL, first_name varchar(255), last_name varchar(255), primary key (person_id))

CREATE TABLE IF NOT EXISTS addresses (email_address varchar(255) not null, city varchar(255), country varchar(255), person_id bigint, primary key (email_address))

ALTER TABLE addresses DROP CONSTRAINT IF EXISTS person
ALTER TABLE addresses ADD CONSTRAINT person FOREIGN KEY (person_id) REFERENCES persons