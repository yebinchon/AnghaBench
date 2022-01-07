
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlsv1_server {int verify; int state; } ;


 int CLIENT_HELLO ;
 int MSG_DEBUG ;
 scalar_t__ tls_verify_hash_init (int *) ;
 int tlsv1_server_clear_data (struct tlsv1_server*) ;
 int wpa_printf (int ,char*) ;

int tlsv1_server_shutdown(struct tlsv1_server *conn)
{
 conn->state = CLIENT_HELLO;

 if (tls_verify_hash_init(&conn->verify) < 0) {
  wpa_printf(MSG_DEBUG, "TLSv1: Failed to re-initialize verify "
      "hash");
  return -1;
 }

 tlsv1_server_clear_data(conn);

 return 0;
}
