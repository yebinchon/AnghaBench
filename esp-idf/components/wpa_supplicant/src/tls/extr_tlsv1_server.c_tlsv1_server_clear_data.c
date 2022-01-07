
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlsv1_server {scalar_t__ dh_secret_len; int * dh_secret; scalar_t__ use_session_ticket; scalar_t__ session_ticket_len; int * session_ticket; int * client_rsa_key; int verify; int rl; } ;


 int TLS_NULL_WITH_NULL_NULL ;
 int crypto_public_key_free (int *) ;
 int os_free (int *) ;
 int tls_verify_hash_free (int *) ;
 int tlsv1_record_change_read_cipher (int *) ;
 int tlsv1_record_change_write_cipher (int *) ;
 int tlsv1_record_set_cipher_suite (int *,int ) ;

__attribute__((used)) static void tlsv1_server_clear_data(struct tlsv1_server *conn)
{
 tlsv1_record_set_cipher_suite(&conn->rl, TLS_NULL_WITH_NULL_NULL);
 tlsv1_record_change_write_cipher(&conn->rl);
 tlsv1_record_change_read_cipher(&conn->rl);
 tls_verify_hash_free(&conn->verify);

 crypto_public_key_free(conn->client_rsa_key);
 conn->client_rsa_key = ((void*)0);

 os_free(conn->session_ticket);
 conn->session_ticket = ((void*)0);
 conn->session_ticket_len = 0;
 conn->use_session_ticket = 0;

 os_free(conn->dh_secret);
 conn->dh_secret = ((void*)0);
 conn->dh_secret_len = 0;
}
