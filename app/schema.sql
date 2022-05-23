DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS patient;
DROP TABLE IF EXISTS address;

CREATE TABLE employee (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT UNIQUE NOT NULL
);

CREATE TABLE patient (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT UNIQUE NOT NULL,
  phone_number INTEGER NOT NULL
);

CREATE TABLE address (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  patient_id INTEGER NOT NULL,
  address_line_1 TEXT NOT NULL,
  address_line_2 TEXT NULL,
  city TEXT NOT NULL,
  county TEXT NOT NULL,
  postcode TEXT NOT NULL,
  FOREIGN KEY (patient_id) REFERENCES patient (id)
);