
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct TYPE_4__ {scalar_t__ tls_version; } ;
struct TYPE_3__ {int * sha1_cert; int * md5_cert; int * sha256_cert; } ;
struct tlsv1_server {int state; TYPE_2__ rl; int * client_rsa_key; TYPE_1__ verify; scalar_t__ verify_peer; } ;


 int CHANGE_CIPHER_SPEC ;
 int MD5_MAC_LEN ;
 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 int SHA1_MAC_LEN ;
 size_t SHA256_MAC_LEN ;
 int TLS_ALERT_DECODE_ERROR ;
 int TLS_ALERT_DECRYPT_ERROR ;
 int TLS_ALERT_INTERNAL_ERROR ;
 int TLS_ALERT_LEVEL_FATAL ;
 int TLS_ALERT_UNEXPECTED_MESSAGE ;
 scalar_t__ TLS_CONTENT_TYPE_CHANGE_CIPHER_SPEC ;
 scalar_t__ TLS_CONTENT_TYPE_HANDSHAKE ;
 scalar_t__ TLS_HANDSHAKE_TYPE_CERTIFICATE_VERIFY ;
 scalar_t__ const TLS_HASH_ALG_SHA256 ;
 scalar_t__ const TLS_SIGN_ALG_RSA ;
 scalar_t__ TLS_VERSION_1_2 ;
 int WPA_GET_BE16 (scalar_t__ const*) ;
 size_t WPA_GET_BE24 (scalar_t__ const*) ;
 scalar_t__ crypto_hash_finish (int *,scalar_t__*,size_t*) ;
 scalar_t__ crypto_public_key_decrypt_pkcs1 (int *,scalar_t__ const*,int,scalar_t__*,size_t*) ;
 int os_free (scalar_t__*) ;
 scalar_t__* os_malloc (int) ;
 scalar_t__ os_memcmp (scalar_t__*,...) ;
 int os_memmove (scalar_t__*,scalar_t__*,size_t) ;
 int tls_process_change_cipher_spec (struct tlsv1_server*,scalar_t__,scalar_t__ const*,size_t*) ;
 int tlsv1_server_alert (struct tlsv1_server*,int ,int ) ;
 int wpa_hexdump (int ,char*,scalar_t__ const*,int) ;
 int wpa_hexdump_key (int ,char*,scalar_t__*,size_t) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int tls_process_certificate_verify(struct tlsv1_server *conn, u8 ct,
       const u8 *in_data, size_t *in_len)
{
 const u8 *pos, *end;
 size_t left, len;
 u8 type;
 size_t hlen, buflen;
 u8 hash[MD5_MAC_LEN + SHA1_MAC_LEN], *hpos, *buf;
 enum { SIGN_ALG_RSA, SIGN_ALG_DSA } alg = SIGN_ALG_RSA;
 u16 slen;

 if (ct == TLS_CONTENT_TYPE_CHANGE_CIPHER_SPEC) {
  if (conn->verify_peer) {
   wpa_printf(MSG_DEBUG, "TLSv1: Client did not include "
       "CertificateVerify");
   tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
        TLS_ALERT_UNEXPECTED_MESSAGE);
   return -1;
  }

  return tls_process_change_cipher_spec(conn, ct, in_data,
            in_len);
 }

 if (ct != TLS_CONTENT_TYPE_HANDSHAKE) {
  wpa_printf(MSG_DEBUG, "TLSv1: Expected Handshake; "
      "received content type 0x%x", ct);
  tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
       TLS_ALERT_UNEXPECTED_MESSAGE);
  return -1;
 }

 pos = in_data;
 left = *in_len;

 if (left < 4) {
  wpa_printf(MSG_DEBUG, "TLSv1: Too short CertificateVerify "
      "message (len=%lu)", (unsigned long) left);
  tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
       TLS_ALERT_DECODE_ERROR);
  return -1;
 }

 type = *pos++;
 len = WPA_GET_BE24(pos);
 pos += 3;
 left -= 4;

 if (len > left) {
  wpa_printf(MSG_DEBUG, "TLSv1: Unexpected CertificateVerify "
      "message length (len=%lu != left=%lu)",
      (unsigned long) len, (unsigned long) left);
  tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
       TLS_ALERT_DECODE_ERROR);
  return -1;
 }

 end = pos + len;

 if (type != TLS_HANDSHAKE_TYPE_CERTIFICATE_VERIFY) {
  wpa_printf(MSG_DEBUG, "TLSv1: Received unexpected handshake "
      "message %d (expected CertificateVerify)", type);
  tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
       TLS_ALERT_UNEXPECTED_MESSAGE);
  return -1;
 }

 wpa_printf(MSG_DEBUG, "TLSv1: Received CertificateVerify");







 hpos = hash;
 if (alg == SIGN_ALG_RSA) {
  hlen = MD5_MAC_LEN;
  if (conn->verify.md5_cert == ((void*)0) ||
      crypto_hash_finish(conn->verify.md5_cert, hpos, &hlen) < 0)
  {
   tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
        TLS_ALERT_INTERNAL_ERROR);
   conn->verify.md5_cert = ((void*)0);
   crypto_hash_finish(conn->verify.sha1_cert, ((void*)0), ((void*)0));
   conn->verify.sha1_cert = ((void*)0);
   return -1;
  }
  hpos += MD5_MAC_LEN;
 } else
  crypto_hash_finish(conn->verify.md5_cert, ((void*)0), ((void*)0));

 conn->verify.md5_cert = ((void*)0);
 hlen = SHA1_MAC_LEN;
 if (conn->verify.sha1_cert == ((void*)0) ||
     crypto_hash_finish(conn->verify.sha1_cert, hpos, &hlen) < 0) {
  conn->verify.sha1_cert = ((void*)0);
  tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
       TLS_ALERT_INTERNAL_ERROR);
  return -1;
 }
 conn->verify.sha1_cert = ((void*)0);

 if (alg == SIGN_ALG_RSA)
  hlen += MD5_MAC_LEN;





 wpa_hexdump(MSG_MSGDUMP, "TLSv1: CertificateVerify hash", hash, hlen);

 if (end - pos < 2) {
  tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
       TLS_ALERT_DECODE_ERROR);
  return -1;
 }
 slen = WPA_GET_BE16(pos);
 pos += 2;
 if (end - pos < slen) {
  tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
       TLS_ALERT_DECODE_ERROR);
  return -1;
 }

 wpa_hexdump(MSG_MSGDUMP, "TLSv1: Signature", pos, end - pos);
 if (conn->client_rsa_key == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "TLSv1: No client public key to verify "
      "signature");
  tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
       TLS_ALERT_INTERNAL_ERROR);
  return -1;
 }

 buflen = end - pos;
 buf = os_malloc(end - pos);
 if (crypto_public_key_decrypt_pkcs1(conn->client_rsa_key,
         pos, end - pos, buf, &buflen) < 0)
 {
  wpa_printf(MSG_DEBUG, "TLSv1: Failed to decrypt signature");
  os_free(buf);
  tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
       TLS_ALERT_DECRYPT_ERROR);
  return -1;
 }

 wpa_hexdump_key(MSG_MSGDUMP, "TLSv1: Decrypted Signature",
   buf, buflen);
 if (buflen != hlen || os_memcmp(buf, hash, buflen) != 0) {
  wpa_printf(MSG_DEBUG, "TLSv1: Invalid Signature in "
      "CertificateVerify - did not match with calculated "
      "hash");
  os_free(buf);
  tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
       TLS_ALERT_DECRYPT_ERROR);
  return -1;
 }

 os_free(buf);

 *in_len = end - in_data;

 conn->state = CHANGE_CIPHER_SPEC;

 return 0;
}
