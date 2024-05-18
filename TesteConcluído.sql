SELECT * FROM Filmes;
--Desafio 1 nome e ano dos filmes
SELECT
	Nome,
	Ano
FROM Filmes;

--Desafio 2 nome e ano dos filmes ordenado pelo ano do filme por ordem crescente
SELECT
	Nome,
	Ano
FROM Filmes
ORDER BY Ano ASC

-- Desafio 3 buscar o filme de volta para o futuro trazendo o nome, ano e duracao
SELECT
	Nome,
	Ano,
	Duracao
From Filmes
WHERE Id = 28

-- Desafio 4 buscar os filmes lançados em 1997

SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano = 1997

-- Desafio 5 buscar os filmes lançados após 2000

SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano > 2000


-- Desafio 6 buscar os filmes com duração maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC

-- Desafio 7 buscar a quantidade de filmes lançados no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT
	Ano,
	COUNT(Ano) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY COUNT(Ano) DESC


-- Desafio 8 buscar os atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT * FROM Atores;

SELECT
	PrimeiroNome,
	UltimoNome
FROM Atores
WHERE Genero = 'M'

-- Desafio 9 buscar os atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT
	PrimeiroNome,
	UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- Desafio 10 buscar o nome do filme e o gênero
SELECT * FROM Filmes;
SELECT * FROM FilmesGenero;
SELECT * FROM Generos;

SELECT 
	NOME,
	GENERO
FROM ((Filmes
INNER JOIN FilmesGenero ON FilmesGenero.IdFilme = Filmes.Id
)
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
)

-- Desafio 11 Buscar o nome do filme e o gênero do tipo 'Mistério'

SELECT
	Nome,
	Genero
FROM ((Filmes
INNER JOIN FilmesGenero ON FilmesGenero.IdFilme = Filmes.Id
)
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
)
WHERE Generos.Genero = 'Mistério'

-- Desafio 12 Buscar o nome do Filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu papel
SELECT * FROM Atores;
SELECT * FROM Filmes;
SELECT * FROM ElencoFilme;

SELECT
	Nome,
	PrimeiroNome,
	UltimoNome,
	Papel
FROM ((Filmes
INNER JOIN ElencoFilme ON ElencoFilme.IdFilme = Filmes.Id
)
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id
)