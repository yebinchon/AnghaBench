
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct hostapd_data* wpa_passphrase; struct hostapd_data* wpa_psk; } ;
struct hostapd_data {struct hostapd_data* conf; TYPE_1__ ssid; struct hostapd_data* wpa_auth; struct hostapd_data* group; struct hostapd_data* wpa_ie; } ;


 int os_free (struct hostapd_data*) ;

bool hostap_deinit(void *data)
{
    struct hostapd_data *hapd = (struct hostapd_data *)data;

    if (hapd == ((void*)0)) {
        return 1;
    }

    if (hapd->wpa_auth->wpa_ie != ((void*)0)) {
        os_free(hapd->wpa_auth->wpa_ie);
    }

    if (hapd->wpa_auth->group != ((void*)0)) {
        os_free(hapd->wpa_auth->group);
    }

    if (hapd->wpa_auth != ((void*)0)) {
        os_free(hapd->wpa_auth);
    }

    if (hapd->conf->ssid.wpa_psk != ((void*)0)) {
        os_free(hapd->conf->ssid.wpa_psk);
    }

    if (hapd->conf->ssid.wpa_passphrase != ((void*)0)) {
        os_free(hapd->conf->ssid.wpa_passphrase);
    }

    if (hapd->conf != ((void*)0)) {
        os_free(hapd->conf);
    }

    if (hapd != ((void*)0)) {
        os_free(hapd);
    }

    return 1;
}
