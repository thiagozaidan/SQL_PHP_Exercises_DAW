CREATE TABLE escola_curso.alunos (
  id_alunos INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (id_alunos)
  );

/* DROP TABLE alunos;

CREATE TABLE alunos(
	id_alunos INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(100) NOT NULL,
	data_nascimento DATE NOT NULL,
	endereco VARCHAR(255) NOT NULL,
	cidade VARCHAR(100) NOT NULL,
	estado VARCHAR(2) NOT NULL,
	cpf VARCHAR(11) NOT NULL,
      PRIMARY KEY (id_alunos)
)ENGINE=InnoDB DEFAULT CHARSET=latin1; */

INSERT INTO alunos VALUES 
(DEFAULT, 'Thiago Cassiano', '2002-05-07', 'Av. Antônio Carlos, 6673', 'BELO HORIZONTE', 'MG', '0002121231'),
(DEFAULT, 'Vinícius Cassiano', '2002-05-07', 'Av. Amazonas, 9996', 'BELO HORIZONTE', 'MG', '00000022'), 
(DEFAULT, 'Meire Cassim', '2002-02-07', 'Av. Atlântica, 992', 'JUIZ DE FORA', 'MG', '0861012078'),
(DEFAULT, 'Nágila Campos', '1961-12-07', 'R. Graham Bell, 65', 'CONTAGEM', 'MG', '45710011006'),
(DEFAULT, 'Plínio Cassiano', '1961-12-28', 'Pça. da Rodoviária, 65', 'DORES DO INDAIÁ', 'MG', '2552214552'); 

TRUNCATE TABLE alunos;

UPDATE alunos
SET cpf = '08610153678'
WHERE id_alunos = 1;

DELETE FROM alunos
WHERE id_alunos = 1;

CREATE TABLE cursos (
  id_cursos INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (id_cursos)
  ); 
  
ALTER TABLE cursos
	ADD COLUMN nome VARCHAR(100) NOT NULL AFTER id_cursos;
    
CREATE TABLE notas (
  id_notas INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (id_notas)
  ); 
  
ALTER TABLE notas 
	ADD COLUMN descricao_atividade VARCHAR(100) NOT NULL AFTER id_notas,
	ADD COLUMN vlr_nota DECIMAL(5,2) NOT NULL AFTER descricao_atividade;
  
  
