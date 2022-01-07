
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wps_data {int dummy; } ;
struct wpabuf {int dummy; } ;


 int ATTR_AUTH_TYPE_FLAGS ;
 int MSG_DEBUG ;
 int WPS_AUTH_SHARED ;
 int WPS_AUTH_TYPES ;
 int wpa_printf (int ,char*) ;
 int wpabuf_put_be16 (struct wpabuf*,int) ;

int wps_build_auth_type_flags(struct wps_data *wps, struct wpabuf *msg)
{
 u16 auth_types = WPS_AUTH_TYPES;



 wpa_printf(MSG_DEBUG, "WPS:  * Authentication Type Flags");
 wpabuf_put_be16(msg, ATTR_AUTH_TYPE_FLAGS);
 wpabuf_put_be16(msg, 2);
 wpabuf_put_be16(msg, auth_types);
 return 0;
}
