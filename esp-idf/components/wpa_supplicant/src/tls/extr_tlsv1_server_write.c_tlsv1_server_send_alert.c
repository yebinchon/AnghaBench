
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct TYPE_2__ {int tls_version; } ;
struct tlsv1_server {TYPE_1__ rl; } ;


 int MSG_DEBUG ;
 int TLS_CONTENT_TYPE_ALERT ;
 int TLS_VERSION ;
 int WPA_PUT_BE16 (void**,int) ;
 void** os_malloc (int) ;
 int wpa_printf (int ,char*,void*,void*) ;

u8 * tlsv1_server_send_alert(struct tlsv1_server *conn, u8 level,
        u8 description, size_t *out_len)
{
 u8 *alert, *pos, *length;

 wpa_printf(MSG_DEBUG, "TLSv1: Send Alert(%d:%d)", level, description);
 *out_len = 0;

 alert = os_malloc(10);
 if (alert == ((void*)0))
  return ((void*)0);

 pos = alert;



 *pos++ = TLS_CONTENT_TYPE_ALERT;

 WPA_PUT_BE16(pos, conn->rl.tls_version ? conn->rl.tls_version :
       TLS_VERSION);
 pos += 2;

 length = pos;
 pos += 2;




 *pos++ = level;

 *pos++ = description;

 WPA_PUT_BE16(length, pos - length - 2);
 *out_len = pos - alert;

 return alert;
}
