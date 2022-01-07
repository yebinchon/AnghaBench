
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wps_data {TYPE_1__* wps; } ;
struct wpabuf {int dummy; } ;
struct TYPE_2__ {int ssid_len; int ssid; } ;


 int ATTR_SSID ;
 int MSG_DEBUG ;
 int wpa_printf (int ,char*) ;
 int wpabuf_put_be16 (struct wpabuf*,int ) ;
 int wpabuf_put_data (struct wpabuf*,int ,int ) ;

__attribute__((used)) static int wps_build_cred_ssid(struct wps_data *wps, struct wpabuf *msg)
{
 wpa_printf(MSG_DEBUG, "WPS:  * SSID");
 wpabuf_put_be16(msg, ATTR_SSID);
 wpabuf_put_be16(msg, wps->wps->ssid_len);
 wpabuf_put_data(msg, wps->wps->ssid, wps->wps->ssid_len);
 return 0;
}
