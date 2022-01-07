
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_credential {scalar_t__ key_len; int key; } ;
struct wpabuf {int dummy; } ;


 scalar_t__ ATTR_NETWORK_KEY ;
 int MSG_DEBUG ;
 int wpa_hexdump_key (int ,char*,int ,scalar_t__) ;
 int wpa_printf (int ,char*,int) ;
 int wpabuf_put_be16 (struct wpabuf*,scalar_t__) ;
 int wpabuf_put_data (struct wpabuf*,int ,scalar_t__) ;

__attribute__((used)) static int wps_build_cred_network_key(struct wpabuf *msg,
          const struct wps_credential *cred)
{
 wpa_printf(MSG_DEBUG, "WPS:  * Network Key (len=%d)",
     (int) cred->key_len);
 wpa_hexdump_key(MSG_DEBUG, "WPS: Network Key",
   cred->key, cred->key_len);
 wpabuf_put_be16(msg, ATTR_NETWORK_KEY);
 wpabuf_put_be16(msg, cred->key_len);
 wpabuf_put_data(msg, cred->key, cred->key_len);
 return 0;
}
