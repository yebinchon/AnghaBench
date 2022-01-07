
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wpabuf {int dummy; } ;


 int ATTR_CONFIG_ERROR ;
 int MSG_DEBUG ;
 int wpa_printf (int ,char*,int) ;
 int wpabuf_put_be16 (struct wpabuf*,int) ;

int wps_build_config_error(struct wpabuf *msg, u16 err)
{
 wpa_printf(MSG_DEBUG, "WPS:  * Configuration Error (%d)", err);
 wpabuf_put_be16(msg, ATTR_CONFIG_ERROR);
 wpabuf_put_be16(msg, 2);
 wpabuf_put_be16(msg, err);
 return 0;
}
