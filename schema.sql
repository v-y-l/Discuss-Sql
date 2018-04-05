CREATE TABLE tb_discuss_comment (
	pk_discuss_comment_id bigint NOT NULL AUTO_INCREMENT,
	recipient_id bigint NOT NULL,
	sender_id bigint NOT NULL,
	comment_text varchar(1000),
	PRIMARY KEY (pk_discuss_comment_id),
	FOREIGN KEY (recipient_id) REFERENCES tb_security_user (pk_security_userid),
	FOREIGN KEY (sender_id) REFERENCES tb_discuss_pseudonym (pk_security_userid)
)

CREATE TABLE tb_discuss_pseudonym (
	pseudonym bigint NOT_NULL,
	fk_pk_feedbackapp_response_id bigint NOT NULL,
	fk_pk_security_userid bigint NOT NULL,
	FOREIGN KEY (fk_pk_feedbackapp_response_id) REFERENCES tb_feedbackapp_response (pk_feedbackapp_response_id),
	FOREIGN KEY (fk_pk_security_userid) REFERENCES tb_security_user (pk_security_userid),
	PRIMARY KEY (fk_pk_feedbackapp_response_id, fk_pk_security_userid)
)