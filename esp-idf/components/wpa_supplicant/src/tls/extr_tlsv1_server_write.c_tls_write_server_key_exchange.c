
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ tls_key_exchange ;
struct TYPE_4__ {int cipher_suite; } ;
struct tlsv1_server {scalar_t__* dh_secret; size_t dh_secret_len; int verify; TYPE_2__ rl; TYPE_1__* cred; } ;
struct tls_cipher_suite {scalar_t__ key_exchange; } ;
struct TYPE_3__ {scalar_t__* dh_p; scalar_t__* dh_g; size_t dh_p_len; size_t dh_g_len; } ;


 int MSG_DEBUG ;
 int TLS_ALERT_INTERNAL_ERROR ;
 int TLS_ALERT_LEVEL_FATAL ;
 int TLS_CONTENT_TYPE_HANDSHAKE ;
 int TLS_HANDSHAKE_TYPE_SERVER_KEY_EXCHANGE ;
 scalar_t__ TLS_KEY_X_DH_anon ;
 scalar_t__ TLS_KEY_X_NULL ;
 int TLS_RECORD_HEADER_LEN ;
 int WPA_PUT_BE16 (scalar_t__*,size_t) ;
 int WPA_PUT_BE24 (scalar_t__*,int) ;
 scalar_t__ crypto_mod_exp (scalar_t__*,size_t,scalar_t__*,int,scalar_t__*,size_t,scalar_t__*,size_t*) ;
 int os_free (scalar_t__*) ;
 void* os_malloc (size_t) ;
 scalar_t__ os_memcmp (scalar_t__*,scalar_t__*,size_t) ;
 int os_memcpy (scalar_t__*,scalar_t__*,size_t) ;
 int os_memmove (scalar_t__*,scalar_t__*,int) ;
 scalar_t__ random_get_bytes (scalar_t__*,size_t) ;
 struct tls_cipher_suite* tls_get_cipher_suite (int ) ;
 int tls_server_key_exchange_allowed (int ) ;
 int tls_verify_hash_add (int *,scalar_t__*,int) ;
 scalar_t__ tlsv1_record_send (TYPE_2__*,int ,scalar_t__*,int,scalar_t__*,int,size_t*) ;
 int tlsv1_server_alert (struct tlsv1_server*,int ,int ) ;
 int wpa_hexdump (int ,char*,scalar_t__*,size_t) ;
 int wpa_hexdump_key (int ,char*,scalar_t__*,int) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int tls_write_server_key_exchange(struct tlsv1_server *conn,
      u8 **msgpos, u8 *end)
{
 tls_key_exchange keyx;
 const struct tls_cipher_suite *suite;
 u8 *pos, *rhdr, *hs_start, *hs_length;
 size_t rlen;
 u8 *dh_ys;
 size_t dh_ys_len;

 suite = tls_get_cipher_suite(conn->rl.cipher_suite);
 if (suite == ((void*)0))
  keyx = TLS_KEY_X_NULL;
 else
  keyx = suite->key_exchange;

 if (!tls_server_key_exchange_allowed(conn->rl.cipher_suite)) {
  wpa_printf(MSG_DEBUG, "TLSv1: No ServerKeyExchange needed");
  return 0;
 }

 if (keyx != TLS_KEY_X_DH_anon) {

  wpa_printf(MSG_DEBUG, "TLSv1: ServerKeyExchange not yet "
      "supported with key exchange type %d", keyx);
  return -1;
 }

 if (conn->cred == ((void*)0) || conn->cred->dh_p == ((void*)0) ||
     conn->cred->dh_g == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "TLSv1: No DH parameters available for "
      "ServerKeyExhcange");
  return -1;
 }

 os_free(conn->dh_secret);
 conn->dh_secret_len = conn->cred->dh_p_len;
 conn->dh_secret = os_malloc(conn->dh_secret_len);
 if (conn->dh_secret == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "TLSv1: Failed to allocate "
      "memory for secret (Diffie-Hellman)");
  tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
       TLS_ALERT_INTERNAL_ERROR);
  return -1;
 }
 if (random_get_bytes(conn->dh_secret, conn->dh_secret_len)) {
  wpa_printf(MSG_DEBUG, "TLSv1: Failed to get random "
      "data for Diffie-Hellman");
  tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
       TLS_ALERT_INTERNAL_ERROR);
  os_free(conn->dh_secret);
  conn->dh_secret = ((void*)0);
  return -1;
 }

 if (os_memcmp(conn->dh_secret, conn->cred->dh_p, conn->dh_secret_len) >
     0)
  conn->dh_secret[0] = 0;

 pos = conn->dh_secret;
 while (pos + 1 < conn->dh_secret + conn->dh_secret_len && *pos == 0)
  pos++;
 if (pos != conn->dh_secret) {
  os_memmove(conn->dh_secret, pos,
      conn->dh_secret_len - (pos - conn->dh_secret));
  conn->dh_secret_len -= pos - conn->dh_secret;
 }
 wpa_hexdump_key(MSG_DEBUG, "TLSv1: DH server's secret value",
   conn->dh_secret, conn->dh_secret_len);


 dh_ys_len = conn->cred->dh_p_len;
 dh_ys = os_malloc(dh_ys_len);
 if (dh_ys == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "TLSv1: Failed to allocate memory for "
      "Diffie-Hellman");
  tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
       TLS_ALERT_INTERNAL_ERROR);
  return -1;
 }
 if (crypto_mod_exp(conn->cred->dh_g, conn->cred->dh_g_len,
             conn->dh_secret, conn->dh_secret_len,
             conn->cred->dh_p, conn->cred->dh_p_len,
             dh_ys, &dh_ys_len)) {
  tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
            TLS_ALERT_INTERNAL_ERROR);
  os_free(dh_ys);
  return -1;
 }


 wpa_hexdump(MSG_DEBUG, "TLSv1: DH Ys (server's public value)",
      dh_ys, dh_ys_len);
 pos = *msgpos;

 wpa_printf(MSG_DEBUG, "TLSv1: Send ServerKeyExchange");
 rhdr = pos;
 pos += TLS_RECORD_HEADER_LEN;




 hs_start = pos;

 *pos++ = TLS_HANDSHAKE_TYPE_SERVER_KEY_EXCHANGE;

 hs_length = pos;
 pos += 3;



 if (pos + 2 + conn->cred->dh_p_len > end) {
  wpa_printf(MSG_DEBUG, "TLSv1: Not enough buffer space for "
      "dh_p");
  tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
       TLS_ALERT_INTERNAL_ERROR);
  os_free(dh_ys);
  return -1;
 }
 WPA_PUT_BE16(pos, conn->cred->dh_p_len);
 pos += 2;
 os_memcpy(pos, conn->cred->dh_p, conn->cred->dh_p_len);
 pos += conn->cred->dh_p_len;


 if (pos + 2 + conn->cred->dh_g_len > end) {
  wpa_printf(MSG_DEBUG, "TLSv1: Not enough buffer space for "
      "dh_g");
  tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
       TLS_ALERT_INTERNAL_ERROR);
  os_free(dh_ys);
  return -1;
 }
 WPA_PUT_BE16(pos, conn->cred->dh_g_len);
 pos += 2;
 os_memcpy(pos, conn->cred->dh_g, conn->cred->dh_g_len);
 pos += conn->cred->dh_g_len;


 if (pos + 2 + dh_ys_len > end) {
  wpa_printf(MSG_DEBUG, "TLSv1: Not enough buffer space for "
      "dh_Ys");
  tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
       TLS_ALERT_INTERNAL_ERROR);
  os_free(dh_ys);
  return -1;
 }
 WPA_PUT_BE16(pos, dh_ys_len);
 pos += 2;
 os_memcpy(pos, dh_ys, dh_ys_len);
 pos += dh_ys_len;
 os_free(dh_ys);

 WPA_PUT_BE24(hs_length, pos - hs_length - 3);

 if (tlsv1_record_send(&conn->rl, TLS_CONTENT_TYPE_HANDSHAKE,
         rhdr, end - rhdr, hs_start, pos - hs_start,
         &rlen) < 0) {
  wpa_printf(MSG_DEBUG, "TLSv1: Failed to generate a record");
  tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
       TLS_ALERT_INTERNAL_ERROR);
  return -1;
 }
 pos = rhdr + rlen;

 tls_verify_hash_add(&conn->verify, hs_start, pos - hs_start);

 *msgpos = pos;

 return 0;
}
