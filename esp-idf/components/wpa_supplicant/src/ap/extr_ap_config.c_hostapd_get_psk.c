
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hostapd_wpa_psk {int const* psk; int addr; scalar_t__ group; struct hostapd_wpa_psk* next; } ;
struct TYPE_2__ {struct hostapd_wpa_psk* wpa_psk; } ;
struct hostapd_bss_config {TYPE_1__ ssid; } ;


 int ETH_ALEN ;
 scalar_t__ memcmp (int ,int const*,int ) ;

const u8 * hostapd_get_psk(const struct hostapd_bss_config *conf,
      const u8 *addr, const u8 *prev_psk)
{
    struct hostapd_wpa_psk *psk;
    int next_ok = prev_psk == ((void*)0);

    for (psk = conf->ssid.wpa_psk; psk != ((void*)0); psk = psk->next) {
        if (next_ok &&
            (psk->group || memcmp(psk->addr, addr, ETH_ALEN) == 0))
            return psk->psk;

        if (psk->psk == prev_psk)
            next_ok = 1;
    }

    return ((void*)0);
}
