
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct wps_data {TYPE_1__* wps; } ;
struct wpabuf {int dummy; } ;
struct TYPE_2__ {int encr_types; int auth_types; } ;


 int ATTR_ENCR_TYPE ;
 int MSG_DEBUG ;
 int WPS_AUTH_WPA2PSK ;
 int WPS_AUTH_WPAPSK ;
 int WPS_ENCR_AES ;
 int WPS_ENCR_NONE ;
 int WPS_ENCR_TKIP ;
 int WPS_ENCR_WEP ;
 int wpa_printf (int ,char*,int) ;
 int wpabuf_put_be16 (struct wpabuf*,int) ;

__attribute__((used)) static int wps_build_cred_encr_type(struct wps_data *wps, struct wpabuf *msg)
{
 u16 encr_type = wps->wps->encr_types;


 if (wps->wps->auth_types & (WPS_AUTH_WPA2PSK | WPS_AUTH_WPAPSK)) {
  if (encr_type & WPS_ENCR_AES)
   encr_type = WPS_ENCR_AES;
  else if (encr_type & WPS_ENCR_TKIP)
   encr_type = WPS_ENCR_TKIP;
 } else {
  if (encr_type & WPS_ENCR_WEP)
   encr_type = WPS_ENCR_WEP;
  else if (encr_type & WPS_ENCR_NONE)
   encr_type = WPS_ENCR_NONE;
 }

 wpa_printf(MSG_DEBUG, "WPS:  * Encryption Type (0x%x)", encr_type);
 wpabuf_put_be16(msg, ATTR_ENCR_TYPE);
 wpabuf_put_be16(msg, 2);
 wpabuf_put_be16(msg, encr_type);
 return 0;
}
