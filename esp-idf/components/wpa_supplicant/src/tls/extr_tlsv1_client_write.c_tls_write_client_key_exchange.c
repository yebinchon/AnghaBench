
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ tls_key_exchange ;
struct TYPE_2__ {int cipher_suite; } ;
struct tlsv1_client {int verify; TYPE_1__ rl; } ;
struct tls_cipher_suite {scalar_t__ key_exchange; } ;


 int MSG_DEBUG ;
 int TLS_ALERT_INTERNAL_ERROR ;
 int TLS_ALERT_LEVEL_FATAL ;
 int TLS_CONTENT_TYPE_HANDSHAKE ;
 int TLS_HANDSHAKE_TYPE_CLIENT_KEY_EXCHANGE ;
 scalar_t__ TLS_KEY_X_DH_anon ;
 scalar_t__ TLS_KEY_X_NULL ;
 int TLS_RECORD_HEADER_LEN ;
 int WPA_PUT_BE24 (int *,int) ;
 int tls_alert (struct tlsv1_client*,int ,int ) ;
 struct tls_cipher_suite* tls_get_cipher_suite (int ) ;
 int tls_verify_hash_add (int *,int *,int) ;
 scalar_t__ tlsv1_key_x_anon_dh (struct tlsv1_client*,int **,int *) ;
 scalar_t__ tlsv1_key_x_rsa (struct tlsv1_client*,int **,int *) ;
 scalar_t__ tlsv1_record_send (TYPE_1__*,int ,int *,int,int *,int,size_t*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int tls_write_client_key_exchange(struct tlsv1_client *conn,
      u8 **msgpos, u8 *end)
{
 u8 *pos, *rhdr, *hs_start, *hs_length;
 size_t rlen;
 tls_key_exchange keyx;
 const struct tls_cipher_suite *suite;

 suite = tls_get_cipher_suite(conn->rl.cipher_suite);
 if (suite == ((void*)0))
  keyx = TLS_KEY_X_NULL;
 else
  keyx = suite->key_exchange;

 pos = *msgpos;

 wpa_printf(MSG_DEBUG, "TLSv1: Send ClientKeyExchange");

 rhdr = pos;
 pos += TLS_RECORD_HEADER_LEN;




 hs_start = pos;

 *pos++ = TLS_HANDSHAKE_TYPE_CLIENT_KEY_EXCHANGE;

 hs_length = pos;
 pos += 3;

 if (keyx == TLS_KEY_X_DH_anon) {
  if (tlsv1_key_x_anon_dh(conn, &pos, end) < 0)
   return -1;
 } else {
  if (tlsv1_key_x_rsa(conn, &pos, end) < 0)
   return -1;
 }

 WPA_PUT_BE24(hs_length, pos - hs_length - 3);

 if (tlsv1_record_send(&conn->rl, TLS_CONTENT_TYPE_HANDSHAKE,
         rhdr, end - rhdr, hs_start, pos - hs_start,
         &rlen) < 0) {
  wpa_printf(MSG_DEBUG, "TLSv1: Failed to create a record");
  tls_alert(conn, TLS_ALERT_LEVEL_FATAL,
     TLS_ALERT_INTERNAL_ERROR);
  return -1;
 }
 pos = rhdr + rlen;
 tls_verify_hash_add(&conn->verify, hs_start, pos - hs_start);

 *msgpos = pos;

 return 0;
}
