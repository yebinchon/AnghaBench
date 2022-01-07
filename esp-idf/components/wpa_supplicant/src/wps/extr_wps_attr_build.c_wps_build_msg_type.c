
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
typedef enum wps_msg_type { ____Placeholder_wps_msg_type } wps_msg_type ;


 int ATTR_MSG_TYPE ;
 int MSG_DEBUG ;
 int wpa_printf (int ,char*,int) ;
 int wpabuf_put_be16 (struct wpabuf*,int) ;
 int wpabuf_put_u8 (struct wpabuf*,int) ;

int wps_build_msg_type(struct wpabuf *msg, enum wps_msg_type msg_type)
{
 wpa_printf(MSG_DEBUG, "WPS:  * Message Type (%d)", msg_type);
 wpabuf_put_be16(msg, ATTR_MSG_TYPE);
 wpabuf_put_be16(msg, 1);
 wpabuf_put_u8(msg, msg_type);
 return 0;
}
