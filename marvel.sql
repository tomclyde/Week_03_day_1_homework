DROP TABLE movies;
DROP TABLE people;

CREATE TABLE movies (
	id SERIAL8 PRIMARY KEY,
	title VARCHAR(255),
	year INT2,
	show_time VARCHAR(255)
);

CREATE TABLE people (
	id SERIAL8 PRIMARY KEY,
	name VARCHAR(255)
);

INSERT INTO people (name) VALUES ('Tom Clyde');
INSERT INTO people (name) VALUES ('Chris Hontoir');
INSERT INTO people (name) VALUES ('James Jardine');
INSERT INTO people (name) VALUES ('Cassia Lonsdale');
INSERT INTO people (name) VALUES ('David MacMurray');
INSERT INTO people (name) VALUES ('Jennifer Mariyadas');
INSERT INTO people (name) VALUES ('Antonio Horta Osario');
INSERT INTO people (name) VALUES ('Steven Raferty');
INSERT INTO people (name) VALUES ('Conor Wilson');


INSERT INTO movies (title, year, show_time) VALUES ('Iron Man', 2008, '15:15');
INSERT INTO movies (title, year, show_time) VALUES ('The Incredible Hulk', 2008, '22:05');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 2', 2010, '18:05');
INSERT INTO movies (title, year, show_time) VALUES ('Thor', 2011, '13:00');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The First Avenger', 2011, '22:15');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers Assemble', 2012, '23:25');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 3', 2013, '12:05');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: The Dark World', 2013, '13:25');
INSERT INTO movies (title, year, show_time) VALUES ('Batman Begins', 2005, '23:55');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The Winter Soldier', 2014, '19:40');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy', 2014, '18:55');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Age of Ultron', 2015, '21:10');
INSERT INTO movies (title, year, show_time) VALUES ('Ant-Man', 2015, '15:20');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: Civil War', 2016, '22:45');
INSERT INTO movies (title, year, show_time) VALUES ('Doctor Strange', 2016, '22:00');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy 2', 2017, '15:30');
INSERT INTO movies (title, year, show_time) VALUES ('Spider-Man: Homecoming', 2017, '17:05');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: Ragnarok', 2017, '18:20');
INSERT INTO movies (title, year, show_time) VALUES ('Black Panther', 2018, '20:10');



-- Return ALL the data in the 'movies' table.
SELECT * from movies;
-- id |                title                | year | show_time
-- ----+-------------------------------------+------+-----------
--  1 | Iron Man                            | 2008 | 15:15
--  2 | The Incredible Hulk                 | 2008 | 22:05
--  3 | Iron Man 2                          | 2010 | 18:05
--  4 | Thor                                | 2011 | 13:00
--  5 | Captain America: The First Avenger  | 2011 | 22:15
--  6 | Avengers Assemble                   | 2012 | 23:25
--  7 | Iron Man 3                          | 2013 | 12:05
--  8 | Thor: The Dark World                | 2013 | 13:25
--  9 | Batman Begins                       | 2005 | 23:55
-- 10 | Captain America: The Winter Soldier | 2014 | 19:40
-- 11 | Guardians of the Galaxy             | 2014 | 18:55
-- 12 | Avengers: Age of Ultron             | 2015 | 21:10
-- 13 | Ant-Man                             | 2015 | 15:20
-- 14 | Captain America: Civil War          | 2016 | 22:45
-- 15 | Doctor Strange                      | 2016 | 22:00
-- 16 | Guardians of the Galaxy 2           | 2017 | 15:30
-- 17 | Spider-Man: Homecoming              | 2017 | 17:05
-- 18 | Thor: Ragnarok                      | 2017 | 18:20
-- 19 | Black Panther                       | 2018 | 20:10
-- (19 rows)

-- Return ONLY the name column from the 'people' table
SELECT name from people;
-- name
-- ----------------------
-- Tom Clyde
-- Chris Hontoir
-- James Jardine
-- Cassia Lonsdale
-- David MacMurray
-- Jennifer Mariyadas
-- Antonio Horta Osario
-- Steven Raferty
-- Conor Wilson
-- (9 rows)

-- Oops! Someone at CodeClan spelled Stephen's name wrong! Change it to reflect the proper spelling ('Steven Raferty' -- should be 'Stephen Rafferty').
UPDATE people
  SET name = 'Stephen Rafferty'
  WHERE name = 'Steven Raferty';
SELECT * from people;
-- UPDATE 1
--  id |         name
-- ----+----------------------
--   1 | Tom Clyde
--   2 | Chris Hontoir
--   3 | James Jardine
--   4 | Cassia Lonsdale
--   5 | David MacMurray
--   6 | Jennifer Mariyadas
--   7 | Antonio Horta Osario
--   9 | Conor Wilson
--   8 | Stephen Rafferty
-- (9 rows)

-- Return ONLY your name from the 'people' table.
SELECT * from people
WHERE name = 'Tom Clyde';
-- id |   name
-- ----+-----------
--  1 | Tom Clyde
-- (1 row)


-- The cinema is showing 'Batman Begins', but Batman is DC, not Marvel! Delete the entry from the 'movies' table.
DELETE from movies WHERE title = 'Batman Begins';
SELECT * from movies;

-- DELETE 1
--  id |                title                | year | show_time
-- ----+-------------------------------------+------+-----------
--   1 | Iron Man                            | 2008 | 15:15
--   2 | The Incredible Hulk                 | 2008 | 22:05
--   3 | Iron Man 2                          | 2010 | 18:05
--   4 | Thor                                | 2011 | 13:00
--   5 | Captain America: The First Avenger  | 2011 | 22:15
--   6 | Avengers Assemble                   | 2012 | 23:25
--   7 | Iron Man 3                          | 2013 | 12:05
--   8 | Thor: The Dark World                | 2013 | 13:25
--  10 | Captain America: The Winter Soldier | 2014 | 19:40
--  11 | Guardians of the Galaxy             | 2014 | 18:55
--  12 | Avengers: Age of Ultron             | 2015 | 21:10
--  13 | Ant-Man                             | 2015 | 15:20
--  14 | Captain America: Civil War          | 2016 | 22:45
--  15 | Doctor Strange                      | 2016 | 22:00
--  16 | Guardians of the Galaxy 2           | 2017 | 15:30
--  17 | Spider-Man: Homecoming              | 2017 | 17:05
--  18 | Thor: Ragnarok                      | 2017 | 18:20
--  19 | Black Panther                       | 2018 | 20:10
-- (18 rows)

-- Create a new entry in the 'people' table with the name of one of the instructors.
INSERT INTO people (name) VALUES ('Keith');
SELECT * FROM people;
-- INSERT 0 1
--  id |         name
-- ----+----------------------
--   1 | Tom Clyde
--   2 | Chris Hontoir
--   3 | James Jardine
--   4 | Cassia Lonsdale
--   5 | David MacMurray
--   6 | Jennifer Mariyadas
--   7 | Antonio Horta Osario
--   9 | Conor Wilson
--   8 | Stephen Rafferty
--  10 | Keith
-- (10 rows)
-- Antonio Horta Osario has decided to hijack our movie evening! Remove him from the table of people.
DELETE FROM people WHERE name = 'Antonio Horta Osario';
SELECT * FROM people;
-- DELETE 1
--  id |        name
-- ----+--------------------
--   1 | Tom Clyde
--   2 | Chris Hontoir
--   3 | James Jardine
--   4 | Cassia Lonsdale
--   5 | David MacMurray
--   6 | Jennifer Mariyadas
--   9 | Conor Wilson
--   8 | Stephen Rafferty
--  10 | Keith
-- (9 rows)

-- The cinema has just heard that they will be holding an exclusive midnight showing of 'Avengers: Infinity War'!
-- Create a new entry in the 'movies' table to reflect this.
INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Infinity War', 2018, '00:00');
SELECT * FROM movies;
-- INSERT 0 1
--  id |                title                | year | show_time
-- ----+-------------------------------------+------+-----------
--   1 | Iron Man                            | 2008 | 15:15
--   2 | The Incredible Hulk                 | 2008 | 22:05
--   3 | Iron Man 2                          | 2010 | 18:05
--   4 | Thor                                | 2011 | 13:00
--   5 | Captain America: The First Avenger  | 2011 | 22:15
--   6 | Avengers Assemble                   | 2012 | 23:25
--   7 | Iron Man 3                          | 2013 | 12:05
--   8 | Thor: The Dark World                | 2013 | 13:25
--  10 | Captain America: The Winter Soldier | 2014 | 19:40
--  11 | Guardians of the Galaxy             | 2014 | 18:55
--  12 | Avengers: Age of Ultron             | 2015 | 21:10
--  13 | Ant-Man                             | 2015 | 15:20
--  14 | Captain America: Civil War          | 2016 | 22:45
--  15 | Doctor Strange                      | 2016 | 22:00
--  16 | Guardians of the Galaxy 2           | 2017 | 15:30
--  17 | Spider-Man: Homecoming              | 2017 | 17:05
--  18 | Thor: Ragnarok                      | 2017 | 18:20
--  19 | Black Panther                       | 2018 | 20:10
--  20 | Avengers: Infinity War              | 2018 | 00:00
-- (19 rows)

-- The cinema would also like to make the Guardians movies a back to back feature. Find out the show time of -- -- --"Guardians of the Galaxy" and set the show time of "Guardians of the Galaxy 2" to start two hours later.
SELECT show_time
FROM movies
WHERE title = 'Guardians of the Galaxy';
UPDATE movies
SET show_time = '20:55'
WHERE title = 'Guardians of the Galaxy 2';

SELECT * FROM movies
ORDER BY show_time;
--
-- id |                title                | year | show_time
-- ----+-------------------------------------+------+-----------
-- 20 | Avengers: Infinity War              | 2018 | 00:00
--  7 | Iron Man 3                          | 2013 | 12:05
--  4 | Thor                                | 2011 | 13:00
--  8 | Thor: The Dark World                | 2013 | 13:25
--  1 | Iron Man                            | 2008 | 15:15
-- 13 | Ant-Man                             | 2015 | 15:20
-- 17 | Spider-Man: Homecoming              | 2017 | 17:05
--  3 | Iron Man 2                          | 2010 | 18:05
-- 18 | Thor: Ragnarok                      | 2017 | 18:20
-- 11 | Guardians of the Galaxy             | 2014 | 18:55
-- 10 | Captain America: The Winter Soldier | 2014 | 19:40
-- 19 | Black Panther                       | 2018 | 20:10
-- 16 | Guardians of the Galaxy 2           | 2017 | 20:55
-- 12 | Avengers: Age of Ultron             | 2015 | 21:10
-- 15 | Doctor Strange                      | 2016 | 22:00
--  2 | The Incredible Hulk                 | 2008 | 22:05
--  5 | Captain America: The First Avenger  | 2011 | 22:15
-- 14 | Captain America: Civil War          | 2016 | 22:45
--  6 | Avengers Assemble                   | 2012 | 23:25
-- (19 rows)

-- Research how to delete multiple entries from your table in a single command.

DELETE FROM movies WHERE year = 2017;
SELECT * FROM movies
ORDER BY year;
-- DELETE 3
--  id |                title                | year | show_time
-- ----+-------------------------------------+------+-----------
--   1 | Iron Man                            | 2008 | 15:15
--   2 | The Incredible Hulk                 | 2008 | 22:05
--   3 | Iron Man 2                          | 2010 | 18:05
--   4 | Thor                                | 2011 | 13:00
--   5 | Captain America: The First Avenger  | 2011 | 22:15
--   6 | Avengers Assemble                   | 2012 | 23:25
--   7 | Iron Man 3                          | 2013 | 12:05
--   8 | Thor: The Dark World                | 2013 | 13:25
--  10 | Captain America: The Winter Soldier | 2014 | 19:40
--  11 | Guardians of the Galaxy             | 2014 | 18:55
--  12 | Avengers: Age of Ultron             | 2015 | 21:10
--  13 | Ant-Man                             | 2015 | 15:20
--  14 | Captain America: Civil War          | 2016 | 22:45
--  15 | Doctor Strange                      | 2016 | 22:00
--  19 | Black Panther                       | 2018 | 20:10
--  20 | Avengers: Infinity War              | 2018 | 00:00
-- (16 rows)

DELETE FROM movies
WHERE id between 5 and 19;
SELECT * FROM movies
ORDER BY id;

-- DELETE 11
--  id |         title          | year | show_time
-- ----+------------------------+------+-----------
--   1 | Iron Man               | 2008 | 15:15
--   2 | The Incredible Hulk    | 2008 | 22:05
--   3 | Iron Man 2             | 2010 | 18:05
--   4 | Thor                   | 2011 | 13:00
--  20 | Avengers: Infinity War | 2018 | 00:00
-- (5 rows)
