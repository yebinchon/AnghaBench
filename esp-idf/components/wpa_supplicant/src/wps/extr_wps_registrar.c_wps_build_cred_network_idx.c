
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_credential {int dummy; } ;
struct wpabuf {int dummy; } ;


 int ATTR_NETWORK_INDEX ;
 int MSG_DEBUG ;
 int wpa_printf (int ,char*) ;
 int wpabuf_put_be16 (struct wpabuf*,int) ;
 int wpabuf_put_u8 (struct wpabuf*,int) ;

__attribute__((used)) static int wps_build_cred_network_idx(struct wpabuf *msg,
          const struct wps_credential *cred)
{
 wpa_printf(MSG_DEBUG, "WPS:  * Network Index (1)");
 wpabuf_put_be16(msg, ATTR_NETWORK_INDEX);
 wpabuf_put_be16(msg, 1);
 wpabuf_put_u8(msg, 1);
 return 0;
}
