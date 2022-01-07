
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wpabuf {int dummy; } ;


 int ATTR_DEV_PASSWORD_ID ;
 int MSG_DEBUG ;
 int wpa_printf (int ,char*,int) ;
 int wpabuf_put_be16 (struct wpabuf*,int) ;

int wps_build_dev_password_id(struct wpabuf *msg, u16 id)
{
 wpa_printf(MSG_DEBUG, "WPS:  * Device Password ID (%d)", id);
 wpabuf_put_be16(msg, ATTR_DEV_PASSWORD_ID);
 wpabuf_put_be16(msg, 2);
 wpabuf_put_be16(msg, id);
 return 0;
}
