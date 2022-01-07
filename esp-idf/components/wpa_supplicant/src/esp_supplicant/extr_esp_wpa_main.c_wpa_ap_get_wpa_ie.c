
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct hostapd_data {TYPE_1__* wpa_auth; } ;
struct TYPE_2__ {int * wpa_ie; int wpa_ie_len; } ;


 scalar_t__ esp_wifi_get_hostap_private_internal () ;

uint8_t *wpa_ap_get_wpa_ie(uint8_t *ie_len)
{
    struct hostapd_data *hapd = (struct hostapd_data *)esp_wifi_get_hostap_private_internal();

    if (!hapd || !hapd->wpa_auth || !hapd->wpa_auth->wpa_ie) {
        return ((void*)0);
    }

    *ie_len = hapd->wpa_auth->wpa_ie_len;
    return hapd->wpa_auth->wpa_ie;
}
