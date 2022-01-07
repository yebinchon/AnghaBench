
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_data {int authkey; struct wpabuf* last_msg; } ;
struct wpabuf {int dummy; } ;


 int ATTR_AUTHENTICATOR ;
 int MSG_DEBUG ;
 int SHA256_MAC_LEN ;
 int WPS_AUTHENTICATOR_LEN ;
 int WPS_AUTHKEY_LEN ;
 int hmac_sha256_vector (int ,int ,int,int const**,size_t*,int *) ;
 int wpa_printf (int ,char*) ;
 int * wpabuf_head (struct wpabuf*) ;
 size_t wpabuf_len (struct wpabuf*) ;
 int wpabuf_put_be16 (struct wpabuf*,int ) ;
 int wpabuf_put_data (struct wpabuf*,int *,int ) ;

int wps_build_authenticator(struct wps_data *wps, struct wpabuf *msg)
{
 u8 hash[SHA256_MAC_LEN];
 const u8 *addr[2];
 size_t len[2];

 if (wps->last_msg == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS: Last message not available for "
      "building authenticator");
  return -1;
 }




 addr[0] = wpabuf_head(wps->last_msg);
 len[0] = wpabuf_len(wps->last_msg);
 addr[1] = wpabuf_head(msg);
 len[1] = wpabuf_len(msg);
 hmac_sha256_vector(wps->authkey, WPS_AUTHKEY_LEN, 2, addr, len, hash);
 wpa_printf(MSG_DEBUG, "WPS:  * Authenticator");
 wpabuf_put_be16(msg, ATTR_AUTHENTICATOR);
 wpabuf_put_be16(msg, WPS_AUTHENTICATOR_LEN);
 wpabuf_put_data(msg, hash, WPS_AUTHENTICATOR_LEN);

 return 0;
}
