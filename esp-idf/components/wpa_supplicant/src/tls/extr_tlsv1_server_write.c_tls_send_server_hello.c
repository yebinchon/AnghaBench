
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tlsv1_server {int state; scalar_t__ use_session_ticket; } ;


 int CHANGE_CIPHER_SPEC ;
 int CLIENT_CERTIFICATE ;
 int os_free (int *) ;
 int * os_malloc (size_t) ;
 int tls_server_cert_chain_der_len (struct tlsv1_server*) ;
 scalar_t__ tls_write_server_certificate (struct tlsv1_server*,int **,int *) ;
 scalar_t__ tls_write_server_certificate_request (struct tlsv1_server*,int **,int *) ;
 scalar_t__ tls_write_server_change_cipher_spec (struct tlsv1_server*,int **,int *) ;
 scalar_t__ tls_write_server_finished (struct tlsv1_server*,int **,int *) ;
 scalar_t__ tls_write_server_hello (struct tlsv1_server*,int **,int *) ;
 scalar_t__ tls_write_server_hello_done (struct tlsv1_server*,int **,int *) ;
 scalar_t__ tls_write_server_key_exchange (struct tlsv1_server*,int **,int *) ;

__attribute__((used)) static u8 * tls_send_server_hello(struct tlsv1_server *conn, size_t *out_len)
{
 u8 *msg, *end, *pos;
 size_t msglen;

 *out_len = 0;

 msglen = 1000 + tls_server_cert_chain_der_len(conn);

 msg = os_malloc(msglen);
 if (msg == ((void*)0))
  return ((void*)0);

 pos = msg;
 end = msg + msglen;

 if (tls_write_server_hello(conn, &pos, end) < 0) {
  os_free(msg);
  return ((void*)0);
 }

 if (conn->use_session_ticket) {

  if (tls_write_server_change_cipher_spec(conn, &pos, end) < 0 ||
      tls_write_server_finished(conn, &pos, end) < 0) {
   os_free(msg);
   return ((void*)0);
  }

  *out_len = pos - msg;

  conn->state = CHANGE_CIPHER_SPEC;

  return msg;
 }


 if (tls_write_server_certificate(conn, &pos, end) < 0 ||
     tls_write_server_key_exchange(conn, &pos, end) < 0 ||
     tls_write_server_certificate_request(conn, &pos, end) < 0 ||
     tls_write_server_hello_done(conn, &pos, end) < 0) {
  os_free(msg);
  return ((void*)0);
 }

 *out_len = pos - msg;

 conn->state = CLIENT_CERTIFICATE;

 return msg;
}
