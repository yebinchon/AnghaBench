
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_data {scalar_t__ snonce; } ;
struct wpabuf {int dummy; } ;


 scalar_t__ ATTR_R_SNONCE2 ;
 int MSG_DEBUG ;
 scalar_t__ WPS_SECRET_NONCE_LEN ;
 int wpa_printf (int ,char*) ;
 int wpabuf_put_be16 (struct wpabuf*,scalar_t__) ;
 int wpabuf_put_data (struct wpabuf*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int wps_build_r_snonce2(struct wps_data *wps, struct wpabuf *msg)
{
 wpa_printf(MSG_DEBUG, "WPS:  * R-SNonce2");
 wpabuf_put_be16(msg, ATTR_R_SNONCE2);
 wpabuf_put_be16(msg, WPS_SECRET_NONCE_LEN);
 wpabuf_put_data(msg, wps->snonce + WPS_SECRET_NONCE_LEN,
   WPS_SECRET_NONCE_LEN);
 return 0;
}
