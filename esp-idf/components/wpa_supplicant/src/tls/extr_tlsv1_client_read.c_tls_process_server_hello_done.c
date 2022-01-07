
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct tlsv1_client {int state; } ;


 int CLIENT_KEY_EXCHANGE ;
 int MSG_DEBUG ;
 int TLS_ALERT_DECODE_ERROR ;
 int TLS_ALERT_LEVEL_FATAL ;
 int TLS_ALERT_UNEXPECTED_MESSAGE ;
 scalar_t__ TLS_CONTENT_TYPE_HANDSHAKE ;
 scalar_t__ TLS_HANDSHAKE_TYPE_SERVER_HELLO_DONE ;
 size_t WPA_GET_BE24 (scalar_t__ const*) ;
 int tls_alert (struct tlsv1_client*,int ,int ) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int tls_process_server_hello_done(struct tlsv1_client *conn, u8 ct,
      const u8 *in_data, size_t *in_len)
{
 const u8 *pos, *end;
 size_t left, len;
 u8 type;

 if (ct != TLS_CONTENT_TYPE_HANDSHAKE) {
  wpa_printf(MSG_DEBUG, "TLSv1: Expected Handshake; "
      "received content type 0x%x", ct);
  tls_alert(conn, TLS_ALERT_LEVEL_FATAL,
     TLS_ALERT_UNEXPECTED_MESSAGE);
  return -1;
 }

 pos = in_data;
 left = *in_len;

 if (left < 4) {
  wpa_printf(MSG_DEBUG, "TLSv1: Too short ServerHelloDone "
      "(left=%lu)", (unsigned long) left);
  tls_alert(conn, TLS_ALERT_LEVEL_FATAL, TLS_ALERT_DECODE_ERROR);
  return -1;
 }

 type = *pos++;
 len = WPA_GET_BE24(pos);
 pos += 3;
 left -= 4;

 if (len > left) {
  wpa_printf(MSG_DEBUG, "TLSv1: Mismatch in ServerHelloDone "
      "length (len=%lu != left=%lu)",
      (unsigned long) len, (unsigned long) left);
  tls_alert(conn, TLS_ALERT_LEVEL_FATAL, TLS_ALERT_DECODE_ERROR);
  return -1;
 }
 end = pos + len;

 if (type != TLS_HANDSHAKE_TYPE_SERVER_HELLO_DONE) {
  wpa_printf(MSG_DEBUG, "TLSv1: Received unexpected handshake "
      "message %d (expected ServerHelloDone)", type);
  tls_alert(conn, TLS_ALERT_LEVEL_FATAL,
     TLS_ALERT_UNEXPECTED_MESSAGE);
  return -1;
 }

 wpa_printf(MSG_DEBUG, "TLSv1: Received ServerHelloDone");

 *in_len = end - in_data;
 conn->state = CLIENT_KEY_EXCHANGE;

 return 0;
}
