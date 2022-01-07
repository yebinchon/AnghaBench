
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_6__ {int * sha1_cert; int * md5_cert; int * sha256_cert; } ;
struct TYPE_5__ {scalar_t__ tls_version; } ;
struct tlsv1_client {TYPE_3__ verify; TYPE_2__ rl; TYPE_1__* cred; } ;
struct TYPE_4__ {int key; } ;


 size_t MD5_MAC_LEN ;
 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 size_t SHA1_MAC_LEN ;
 size_t SHA256_MAC_LEN ;
 int TLS_ALERT_INTERNAL_ERROR ;
 int TLS_ALERT_LEVEL_FATAL ;
 int TLS_CONTENT_TYPE_HANDSHAKE ;
 int TLS_HANDSHAKE_TYPE_CERTIFICATE_VERIFY ;
 int TLS_HASH_ALG_SHA256 ;
 int TLS_RECORD_HEADER_LEN ;
 int TLS_SIGN_ALG_RSA ;
 scalar_t__ TLS_VERSION_1_2 ;
 int WPA_PUT_BE16 (int *,size_t) ;
 int WPA_PUT_BE24 (int *,int) ;
 scalar_t__ crypto_hash_finish (int *,int *,size_t*) ;
 scalar_t__ crypto_private_key_sign_pkcs1 (int ,int *,size_t,int *,size_t*) ;
 int os_memcpy (int *,char*,int) ;
 int os_memmove (int *,int *,size_t) ;
 int tls_alert (struct tlsv1_client*,int ,int ) ;
 int tls_verify_hash_add (TYPE_3__*,int *,int) ;
 scalar_t__ tlsv1_record_send (TYPE_2__*,int ,int *,int,int *,int,size_t*) ;
 int wpa_hexdump (int ,char*,int *,size_t) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int tls_write_client_certificate_verify(struct tlsv1_client *conn,
            u8 **msgpos, u8 *end)
{
 u8 *pos, *rhdr, *hs_start, *hs_length, *signed_start;
 size_t rlen, hlen, clen;
 u8 hash[100], *hpos;
 enum { SIGN_ALG_RSA, SIGN_ALG_DSA } alg = SIGN_ALG_RSA;

 pos = *msgpos;

 wpa_printf(MSG_DEBUG, "TLSv1: Send CertificateVerify");
 rhdr = pos;
 pos += TLS_RECORD_HEADER_LEN;


 hs_start = pos;

 *pos++ = TLS_HANDSHAKE_TYPE_CERTIFICATE_VERIFY;

 hs_length = pos;
 pos += 3;
 hpos = hash;
 if (alg == SIGN_ALG_RSA) {
  hlen = MD5_MAC_LEN;
  if (conn->verify.md5_cert == ((void*)0) ||
      crypto_hash_finish(conn->verify.md5_cert, hpos, &hlen) < 0)
  {
   tls_alert(conn, TLS_ALERT_LEVEL_FATAL,
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
  tls_alert(conn, TLS_ALERT_LEVEL_FATAL,
     TLS_ALERT_INTERNAL_ERROR);
  return -1;
 }
 conn->verify.sha1_cert = ((void*)0);

 if (alg == SIGN_ALG_RSA)
  hlen += MD5_MAC_LEN;





 wpa_hexdump(MSG_MSGDUMP, "TLSv1: CertificateVerify hash", hash, hlen);
 signed_start = pos;
 pos += 2;
 clen = end - pos;
 if (conn->cred == ((void*)0) ||
     crypto_private_key_sign_pkcs1(conn->cred->key, hash, hlen,
       pos, &clen) < 0) {
  wpa_printf(MSG_DEBUG, "TLSv1: Failed to sign hash (PKCS #1)");
  tls_alert(conn, TLS_ALERT_LEVEL_FATAL,
     TLS_ALERT_INTERNAL_ERROR);
  return -1;
 }
 WPA_PUT_BE16(signed_start, clen);

 pos += clen;

 WPA_PUT_BE24(hs_length, pos - hs_length - 3);

 if (tlsv1_record_send(&conn->rl, TLS_CONTENT_TYPE_HANDSHAKE,
         rhdr, end - rhdr, hs_start, pos - hs_start,
         &rlen) < 0) {
  wpa_printf(MSG_DEBUG, "TLSv1: Failed to generate a record");
  tls_alert(conn, TLS_ALERT_LEVEL_FATAL,
     TLS_ALERT_INTERNAL_ERROR);
  return -1;
 }
 pos = rhdr + rlen;

 tls_verify_hash_add(&conn->verify, hs_start, pos - hs_start);

 *msgpos = pos;

 return 0;
}
