
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tlsv1_client {int * server_rsa_key; } ;


 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 int TLS_ALERT_INTERNAL_ERROR ;
 int TLS_ALERT_LEVEL_FATAL ;
 int TLS_PRE_MASTER_SECRET_LEN ;
 int WPA_PUT_BE16 (int *,size_t) ;
 int crypto_public_key_encrypt_pkcs1_v15 (int *,int *,int,int *,size_t*) ;
 int os_memset (int *,int ,int) ;
 int tls_alert (struct tlsv1_client*,int ,int ) ;
 scalar_t__ tls_derive_keys (struct tlsv1_client*,int *,int) ;
 scalar_t__ tls_derive_pre_master_secret (int *) ;
 int wpa_hexdump (int ,char*,int *,size_t) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int tlsv1_key_x_rsa(struct tlsv1_client *conn, u8 **pos, u8 *end)
{
 u8 pre_master_secret[TLS_PRE_MASTER_SECRET_LEN];
 size_t clen;
 int res;

 if (tls_derive_pre_master_secret(pre_master_secret) < 0 ||
     tls_derive_keys(conn, pre_master_secret,
       TLS_PRE_MASTER_SECRET_LEN)) {
  wpa_printf(MSG_DEBUG, "TLSv1: Failed to derive keys");
  tls_alert(conn, TLS_ALERT_LEVEL_FATAL,
     TLS_ALERT_INTERNAL_ERROR);
  return -1;
 }


 if (conn->server_rsa_key == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "TLSv1: No server RSA key to "
      "use for encrypting pre-master secret");
  tls_alert(conn, TLS_ALERT_LEVEL_FATAL,
     TLS_ALERT_INTERNAL_ERROR);
  return -1;
 }


 *pos += 2;
 clen = end - *pos;
 res = crypto_public_key_encrypt_pkcs1_v15(
  conn->server_rsa_key,
  pre_master_secret, TLS_PRE_MASTER_SECRET_LEN,
  *pos, &clen);
 os_memset(pre_master_secret, 0, TLS_PRE_MASTER_SECRET_LEN);
 if (res < 0) {
  wpa_printf(MSG_DEBUG, "TLSv1: RSA encryption failed");
  tls_alert(conn, TLS_ALERT_LEVEL_FATAL,
     TLS_ALERT_INTERNAL_ERROR);
  return -1;
 }
 WPA_PUT_BE16(*pos - 2, clen);
 wpa_hexdump(MSG_MSGDUMP, "TLSv1: Encrypted pre_master_secret",
      *pos, clen);
 *pos += clen;

 return 0;
}
