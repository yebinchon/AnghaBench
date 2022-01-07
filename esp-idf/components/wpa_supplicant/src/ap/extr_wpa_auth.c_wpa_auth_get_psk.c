
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
struct wpa_authenticator {int dummy; } ;
struct hostapd_data {int conf; } ;


 scalar_t__ esp_wifi_get_hostap_private_internal () ;
 scalar_t__ hostapd_get_psk (int ,int const*,int const*) ;

__attribute__((used)) static inline const u8 * wpa_auth_get_psk(struct wpa_authenticator *wpa_auth,
                      const u8 *addr, const u8 *prev_psk)
{
    struct hostapd_data *hapd = (struct hostapd_data *)esp_wifi_get_hostap_private_internal();

    if (!hapd){
        return ((void*)0);
    }

    return (u8*)hostapd_get_psk(hapd->conf, addr, prev_psk);
}
