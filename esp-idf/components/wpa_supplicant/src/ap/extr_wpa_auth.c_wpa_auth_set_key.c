
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_authenticator {int dummy; } ;
typedef enum wpa_alg { ____Placeholder_wpa_alg } wpa_alg ;


 int esp_wifi_set_ap_key_internal (int,int const*,int,int *,size_t) ;

__attribute__((used)) static inline int wpa_auth_set_key(struct wpa_authenticator *wpa_auth,
                   int vlan_id,
                   enum wpa_alg alg, const u8 *addr, int idx,
                   u8 *key, size_t key_len)
{
    return esp_wifi_set_ap_key_internal(alg, addr, idx, key, key_len);
}
