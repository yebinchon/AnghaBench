
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wpabuf {int dummy; } ;


 int ATTR_CONFIG_METHODS ;
 int MSG_DEBUG ;
 int wpa_printf (int ,char*,int) ;
 int wpabuf_put_be16 (struct wpabuf*,int) ;

int wps_build_config_methods(struct wpabuf *msg, u16 methods)
{
 wpa_printf(MSG_DEBUG, "WPS:  * Config Methods (%x)", methods);
 wpabuf_put_be16(msg, ATTR_CONFIG_METHODS);
 wpabuf_put_be16(msg, 2);
 wpabuf_put_be16(msg, methods);
 return 0;
}
