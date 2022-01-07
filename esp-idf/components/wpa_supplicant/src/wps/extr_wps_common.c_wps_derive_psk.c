
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_data {int psk2; int psk1; int authkey; } ;


 int MSG_DEBUG ;
 int SHA256_MAC_LEN ;
 int WPS_AUTHKEY_LEN ;
 int WPS_PSK_LEN ;
 int hmac_sha256 (int ,int ,int const*,size_t,int *) ;
 int os_memcpy (int ,int *,int ) ;
 int wpa_hexdump_ascii_key (int ,char*,int const*,size_t) ;
 int wpa_hexdump_key (int ,char*,int ,int ) ;

void wps_derive_psk(struct wps_data *wps, const u8 *dev_passwd,
      size_t dev_passwd_len)
{
 u8 hash[SHA256_MAC_LEN];

 hmac_sha256(wps->authkey, WPS_AUTHKEY_LEN, dev_passwd,
                               (dev_passwd_len + 1) / 2, hash);
 os_memcpy(wps->psk1, hash, WPS_PSK_LEN);
 hmac_sha256(wps->authkey, WPS_AUTHKEY_LEN,
              dev_passwd + (dev_passwd_len + 1) / 2,
              dev_passwd_len / 2, hash);
 os_memcpy(wps->psk2, hash, WPS_PSK_LEN);

 wpa_hexdump_ascii_key(MSG_DEBUG, "WPS: Device Password",
         dev_passwd, dev_passwd_len);
 wpa_hexdump_key(MSG_DEBUG, "WPS: PSK1", wps->psk1, WPS_PSK_LEN);
 wpa_hexdump_key(MSG_DEBUG, "WPS: PSK2", wps->psk2, WPS_PSK_LEN);
}
