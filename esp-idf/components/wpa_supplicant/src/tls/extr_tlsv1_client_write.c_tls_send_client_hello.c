
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tlsv1_client {int num_cipher_suites; int client_hello_ext_len; int session_id_len; int* cipher_suites; int state; int rl; int verify; int client_hello_ext; int session_id; int client_random; } ;
struct os_time {int sec; } ;


 int MSG_DEBUG ;
 int MSG_ERROR ;
 int MSG_MSGDUMP ;
 int SERVER_HELLO ;
 int TLS_ALERT_INTERNAL_ERROR ;
 int TLS_ALERT_LEVEL_FATAL ;
 int TLS_COMPRESSION_NULL ;
 int TLS_CONTENT_TYPE_HANDSHAKE ;
 int TLS_HANDSHAKE_TYPE_CLIENT_HELLO ;
 int TLS_RANDOM_LEN ;
 int TLS_RECORD_HEADER_LEN ;
 int TLS_VERSION ;
 int WPA_PUT_BE16 (int *,int) ;
 int WPA_PUT_BE24 (int *,int) ;
 int WPA_PUT_BE32 (int ,int ) ;
 int os_free (int *) ;
 int os_get_time (struct os_time*) ;
 int * os_malloc (size_t) ;
 int os_memcpy (int *,int ,int) ;
 scalar_t__ random_get_bytes (int ,int) ;
 int tls_alert (struct tlsv1_client*,int ,int ) ;
 int tls_verify_hash_add (int *,int *,int) ;
 scalar_t__ tlsv1_record_send (int *,int ,int *,int,int *,int,size_t*) ;
 int wpa_hexdump (int ,char*,int ,int) ;
 int wpa_printf (int ,char*) ;

u8 * tls_send_client_hello(struct tlsv1_client *conn, size_t *out_len)
{
 u8 *hello, *end, *pos, *hs_length, *hs_start, *rhdr;
 struct os_time now;
 size_t len, i;

 wpa_printf(MSG_DEBUG, "TLSv1: Send ClientHello");
 *out_len = 0;

 os_get_time(&now);
 WPA_PUT_BE32(conn->client_random, now.sec);
 if (random_get_bytes(conn->client_random + 4, TLS_RANDOM_LEN - 4)) {
  wpa_printf(MSG_ERROR, "TLSv1: Could not generate "
      "client_random");
  return ((void*)0);
 }
 wpa_hexdump(MSG_MSGDUMP, "TLSv1: client_random",
      conn->client_random, TLS_RANDOM_LEN);

 len = 100 + conn->num_cipher_suites * 2 + conn->client_hello_ext_len;
 hello = os_malloc(len);
 if (hello == ((void*)0))
  return ((void*)0);
 end = hello + len;

 rhdr = hello;
 pos = rhdr + TLS_RECORD_HEADER_LEN;




 hs_start = pos;

 *pos++ = TLS_HANDSHAKE_TYPE_CLIENT_HELLO;

 hs_length = pos;
 pos += 3;


 WPA_PUT_BE16(pos, TLS_VERSION);
 pos += 2;

 os_memcpy(pos, conn->client_random, TLS_RANDOM_LEN);
 pos += TLS_RANDOM_LEN;

 *pos++ = conn->session_id_len;
 os_memcpy(pos, conn->session_id, conn->session_id_len);
 pos += conn->session_id_len;

 WPA_PUT_BE16(pos, 2 * conn->num_cipher_suites);
 pos += 2;
 for (i = 0; i < conn->num_cipher_suites; i++) {
  WPA_PUT_BE16(pos, conn->cipher_suites[i]);
  pos += 2;
 }

 *pos++ = 1;
 *pos++ = TLS_COMPRESSION_NULL;

 if (conn->client_hello_ext) {
  os_memcpy(pos, conn->client_hello_ext,
     conn->client_hello_ext_len);
  pos += conn->client_hello_ext_len;
 }

 WPA_PUT_BE24(hs_length, pos - hs_length - 3);
 tls_verify_hash_add(&conn->verify, hs_start, pos - hs_start);

 if (tlsv1_record_send(&conn->rl, TLS_CONTENT_TYPE_HANDSHAKE,
         rhdr, end - rhdr, hs_start, pos - hs_start,
         out_len) < 0) {
  wpa_printf(MSG_DEBUG, "TLSv1: Failed to create TLS record");
  tls_alert(conn, TLS_ALERT_LEVEL_FATAL,
     TLS_ALERT_INTERNAL_ERROR);
  os_free(hello);
  return ((void*)0);
 }

 conn->state = SERVER_HELLO;

 return hello;
}
