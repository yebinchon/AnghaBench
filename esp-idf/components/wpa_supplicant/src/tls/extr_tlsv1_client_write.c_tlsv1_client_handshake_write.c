
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tlsv1_client {int state; } ;





 int ESTABLISHED ;
 int MSG_DEBUG ;
 int * os_malloc (int) ;
 int * tls_send_change_cipher_spec (struct tlsv1_client*,size_t*) ;
 int * tls_send_client_key_exchange (struct tlsv1_client*,size_t*) ;
 int wpa_printf (int ,char*,...) ;

u8 * tlsv1_client_handshake_write(struct tlsv1_client *conn, size_t *out_len,
      int no_appl_data)
{
 switch (conn->state) {
 case 128:
  return tls_send_client_key_exchange(conn, out_len);
 case 129:
  return tls_send_change_cipher_spec(conn, out_len);
 case 130:
  wpa_printf(MSG_DEBUG, "TLSv1: Handshake completed "
      "successfully");
  conn->state = ESTABLISHED;
  *out_len = 0;
  if (no_appl_data) {

   return os_malloc(1);
  }
  return ((void*)0);
 default:
  wpa_printf(MSG_DEBUG, "TLSv1: Unexpected state %d while "
      "generating reply", conn->state);
  return ((void*)0);
 }
}
