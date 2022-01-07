
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {scalar_t__ tls_version; } ;
struct TYPE_4__ {int * sha1_server; int * md5_server; int * sha256_server; } ;
struct tlsv1_server {TYPE_1__ rl; TYPE_2__ verify; int master_secret; } ;


 int MD5_MAC_LEN ;
 int MSG_DEBUG ;
 int SHA1_MAC_LEN ;
 size_t SHA256_MAC_LEN ;
 int TLS_ALERT_INTERNAL_ERROR ;
 int TLS_ALERT_LEVEL_FATAL ;
 int TLS_CONTENT_TYPE_HANDSHAKE ;
 int TLS_HANDSHAKE_TYPE_FINISHED ;
 int TLS_MASTER_SECRET_LEN ;
 int TLS_VERIFY_DATA_LEN ;
 scalar_t__ TLS_VERSION_1_2 ;
 int WPA_PUT_BE24 (int *,int) ;
 scalar_t__ crypto_hash_finish (int *,int *,size_t*) ;
 scalar_t__ tls_prf (scalar_t__,int ,int ,char*,int *,size_t,int *,int) ;
 int tls_verify_hash_add (TYPE_2__*,int *,int) ;
 scalar_t__ tlsv1_record_send (TYPE_1__*,int ,int *,int,int *,int,size_t*) ;
 int tlsv1_server_alert (struct tlsv1_server*,int ,int ) ;
 int wpa_hexdump_key (int ,char*,int *,int) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int tls_write_server_finished(struct tlsv1_server *conn,
         u8 **msgpos, u8 *end)
{
 u8 *pos, *hs_start;
 size_t rlen, hlen;
 u8 verify_data[1 + 3 + TLS_VERIFY_DATA_LEN];
 u8 hash[MD5_MAC_LEN + SHA1_MAC_LEN];

 pos = *msgpos;

 wpa_printf(MSG_DEBUG, "TLSv1: Send Finished");
 hlen = MD5_MAC_LEN;
 if (conn->verify.md5_server == ((void*)0) ||
     crypto_hash_finish(conn->verify.md5_server, hash, &hlen) < 0) {
  tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
       TLS_ALERT_INTERNAL_ERROR);
  conn->verify.md5_server = ((void*)0);
  crypto_hash_finish(conn->verify.sha1_server, ((void*)0), ((void*)0));
  conn->verify.sha1_server = ((void*)0);
  return -1;
 }
 conn->verify.md5_server = ((void*)0);
 hlen = SHA1_MAC_LEN;
 if (conn->verify.sha1_server == ((void*)0) ||
     crypto_hash_finish(conn->verify.sha1_server, hash + MD5_MAC_LEN,
          &hlen) < 0) {
  conn->verify.sha1_server = ((void*)0);
  tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
       TLS_ALERT_INTERNAL_ERROR);
  return -1;
 }
 conn->verify.sha1_server = ((void*)0);
 hlen = MD5_MAC_LEN + SHA1_MAC_LEN;





 if (tls_prf(conn->rl.tls_version,
      conn->master_secret, TLS_MASTER_SECRET_LEN,
      "server finished", hash, hlen,
      verify_data + 1 + 3, TLS_VERIFY_DATA_LEN)) {
  wpa_printf(MSG_DEBUG, "TLSv1: Failed to generate verify_data");
  tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
       TLS_ALERT_INTERNAL_ERROR);
  return -1;
 }
 wpa_hexdump_key(MSG_DEBUG, "TLSv1: verify_data (server)",
   verify_data + 1 + 3, TLS_VERIFY_DATA_LEN);


 pos = hs_start = verify_data;

 *pos++ = TLS_HANDSHAKE_TYPE_FINISHED;

 WPA_PUT_BE24(pos, TLS_VERIFY_DATA_LEN);
 pos += 3;
 pos += TLS_VERIFY_DATA_LEN;
 tls_verify_hash_add(&conn->verify, hs_start, pos - hs_start);

 if (tlsv1_record_send(&conn->rl, TLS_CONTENT_TYPE_HANDSHAKE,
         *msgpos, end - *msgpos, hs_start, pos - hs_start,
         &rlen) < 0) {
  wpa_printf(MSG_DEBUG, "TLSv1: Failed to create a record");
  tlsv1_server_alert(conn, TLS_ALERT_LEVEL_FATAL,
       TLS_ALERT_INTERNAL_ERROR);
  return -1;
 }

 *msgpos += rlen;

 return 0;
}
