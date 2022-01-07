
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wps_data {TYPE_1__* wps; } ;
struct wpabuf {int dummy; } ;
struct TYPE_2__ {int network_key_len; int network_key; } ;


 int ATTR_NETWORK_KEY ;
 int MSG_DEBUG ;
 int wpa_printf (int ,char*) ;
 int wpabuf_put_be16 (struct wpabuf*,int ) ;
 int wpabuf_put_data (struct wpabuf*,int ,int ) ;

__attribute__((used)) static int wps_build_cred_network_key(struct wps_data *wps, struct wpabuf *msg)
{
 wpa_printf(MSG_DEBUG, "WPS:  * Network Key");
 wpabuf_put_be16(msg, ATTR_NETWORK_KEY);
 wpabuf_put_be16(msg, wps->wps->network_key_len);
 wpabuf_put_data(msg, wps->wps->network_key, wps->wps->network_key_len);
 return 0;
}
