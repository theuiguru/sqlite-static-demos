CREATE TABLE persons (
  id INTEGER PRIMARY KEY,
  full_name TEXT NOT NULL,
  birth_year INTEGER,
  death_year INTEGER,
  birth_place TEXT
);

CREATE TABLE relationships (
  id INTEGER PRIMARY KEY,
  person_id INTEGER NOT NULL REFERENCES persons(id),
  related_person_id INTEGER NOT NULL REFERENCES persons(id),
  rel_type TEXT NOT NULL
);

INSERT INTO persons (id, full_name, birth_year, death_year, birth_place) VALUES
  (1, 'Arthur Pendelton', 1925, 2004, 'Brooklyn, NY'),
  (2, 'Evelyn Pendelton', 1928, 2012, 'Queens, NY'),
  (3, 'Richard Pendelton', 1954, NULL, 'Levittown, NY');

INSERT INTO relationships (id, person_id, related_person_id, rel_type) VALUES
  (1, 3, 1, 'parent'),
  (2, 3, 2, 'parent');