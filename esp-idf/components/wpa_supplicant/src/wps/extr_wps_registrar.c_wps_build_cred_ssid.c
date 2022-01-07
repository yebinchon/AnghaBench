
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_credential {int ssid_len; int ssid; } ;
struct wpabuf {int dummy; } ;


 int ATTR_SSID ;
 int MSG_DEBUG ;
 int wpa_hexdump_ascii (int ,char*,int ,int ) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_put_be16 (struct wpabuf*,int ) ;
 int wpabuf_put_data (struct wpabuf*,int ,int ) ;

__attribute__((used)) static int wps_build_cred_ssid(struct wpabuf *msg,
          const struct wps_credential *cred)
{
 wpa_printf(MSG_DEBUG, "WPS:  * SSID");
 wpa_hexdump_ascii(MSG_DEBUG, "WPS: SSID for Credential",
     cred->ssid, cred->ssid_len);
 wpabuf_put_be16(msg, ATTR_SSID);
 wpabuf_put_be16(msg, cred->ssid_len);
 wpabuf_put_data(msg, cred->ssid, cred->ssid_len);
 return 0;
}
