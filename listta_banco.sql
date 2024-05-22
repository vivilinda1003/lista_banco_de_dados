
use avaliacao_22a;

#1
INSERT INTO livros (isbn, titulo, autor, editora, ano_publicacao, categoria, idioma, numero_paginas, disponibilidade)
VALUES ('978-1234567890', 'A brief History of Time', 'Stephen hawking', 'Bantam Books', '1988', 'História', 'Ingles', '256', 'TRUE');

#2
UPDATE livros 
SET disponibilidade = FALSE
WHERE ano_publicacao < 2000;

#3
UPDATE livros
SET editora = 'Plume Books'
WHERE titulo = '1984';

#4
UPDATE livros 
SET idioma = 'ingles'
WHERE editora  = 'Peguin Books';

#5
UPDATE livros
SET titulo = 'Harry Potter e a Pedra Filosofal (Ediçao Especial)'
WHERE isbn = '978-0439708180';

#6
DELETE FROM livros
WHERE categoria = 'terror';

#7
DELETE FROM livros
WHERE idioma = 'frances' AND ANO_PUBLICACAO < 1970;

#8
DELETE FROM livros 
WHERE titulo = 'As Cronicas de Narnia';

#9
DELETE FROM livros
WHERE editora = 'Peguin Books';

#10
SELECT*FROM livros 
WHERE numero_paginas > 500;

#11
SELECT categoria, COUNT(*) AS total_livros FROM livros
GROUP BY categoria;

#12
SELECT*FROM livros 
ORDER BY ano_publicacao 
LIMIT 5;

#13
SELECT SUM(numero_paginas) AS total_paginas, COUNT(*) AS total_livros, AVG(numero_paginas) AS media_paginas
FROM livros
WHERE categoria = 'Drama';

#14
SELECT AVG(ano_publicacao) AS media_ano_publicacao
FROM livros
WHERE disponibilidade = TRUE; 

#15
SELECT*FROM livros
ORDER BY ano_publlicacao DESC LIMIT 1;
SELECT*FROM livros 
ORDER BY ano-publicacao ASC LIMIT 1;

#16
SELECT*FROM livros 
order by ano_publicacao DESC;

#17
SELECT titulo
FROM livros
WHERE idioma = 'ingles'
UNION
SELECT titulo
FROM livros
WHERE idioma = 'Portugues';

#18
SELECT*FROM livros
WHERE autor = 'george orwell';