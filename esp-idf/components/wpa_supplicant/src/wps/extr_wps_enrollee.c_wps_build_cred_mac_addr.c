
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wps_data {TYPE_2__* wps; } ;
struct wpabuf {int dummy; } ;
struct TYPE_3__ {int mac_addr; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int ATTR_MAC_ADDR ;
 int ETH_ALEN ;
 int MSG_DEBUG ;
 int wpa_printf (int ,char*) ;
 int wpabuf_put_be16 (struct wpabuf*,int ) ;
 int wpabuf_put_data (struct wpabuf*,int ,int ) ;

__attribute__((used)) static int wps_build_cred_mac_addr(struct wps_data *wps, struct wpabuf *msg)
{
 wpa_printf(MSG_DEBUG, "WPS:  * MAC Address (AP BSSID)");
 wpabuf_put_be16(msg, ATTR_MAC_ADDR);
 wpabuf_put_be16(msg, ETH_ALEN);
 wpabuf_put_data(msg, wps->wps->dev.mac_addr, ETH_ALEN);
 return 0;
}
