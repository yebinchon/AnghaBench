
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct wps_data {TYPE_1__* wps; } ;
struct wpabuf {int dummy; } ;
struct TYPE_2__ {int auth_types; } ;


 int ATTR_AUTH_TYPE ;
 int MSG_DEBUG ;
 int WPS_AUTH_SHARED ;
 int WPS_AUTH_WPA2PSK ;
 int WPS_AUTH_WPAPSK ;
 int WPS_WIFI_AUTH_OPEN ;
 int wpa_printf (int ,char*,int) ;
 int wpabuf_put_be16 (struct wpabuf*,int) ;

__attribute__((used)) static int wps_build_cred_auth_type(struct wps_data *wps, struct wpabuf *msg)
{
 u16 auth_type = wps->wps->auth_types;


 if (auth_type & WPS_AUTH_WPA2PSK)
  auth_type = WPS_AUTH_WPA2PSK;
 else if (auth_type & WPS_AUTH_WPAPSK)
  auth_type = WPS_AUTH_WPAPSK;
 else if (auth_type & WPS_WIFI_AUTH_OPEN)
  auth_type = WPS_WIFI_AUTH_OPEN;
 else if (auth_type & WPS_AUTH_SHARED)
  auth_type = WPS_AUTH_SHARED;

 wpa_printf(MSG_DEBUG, "WPS:  * Authentication Type (0x%x)", auth_type);
 wpabuf_put_be16(msg, ATTR_AUTH_TYPE);
 wpabuf_put_be16(msg, 2);
 wpabuf_put_be16(msg, auth_type);
 return 0;
}
