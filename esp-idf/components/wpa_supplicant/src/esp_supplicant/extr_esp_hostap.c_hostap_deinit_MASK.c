#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct hostapd_data* wpa_passphrase; struct hostapd_data* wpa_psk; } ;
struct hostapd_data {struct hostapd_data* conf; TYPE_1__ ssid; struct hostapd_data* wpa_auth; struct hostapd_data* group; struct hostapd_data* wpa_ie; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hostapd_data*) ; 

bool FUNC1(void *data)
{
    struct hostapd_data *hapd = (struct hostapd_data *)data;

    if (hapd == NULL) {
        return true;
    }

    if (hapd->wpa_auth->wpa_ie != NULL) {
        FUNC0(hapd->wpa_auth->wpa_ie);
    }

    if (hapd->wpa_auth->group != NULL) {
        FUNC0(hapd->wpa_auth->group);
    }

    if (hapd->wpa_auth != NULL) {
        FUNC0(hapd->wpa_auth);
    }

    if (hapd->conf->ssid.wpa_psk != NULL) {
        FUNC0(hapd->conf->ssid.wpa_psk);
    }

    if (hapd->conf->ssid.wpa_passphrase != NULL) {
        FUNC0(hapd->conf->ssid.wpa_passphrase);
    }

    if (hapd->conf != NULL) {
        FUNC0(hapd->conf);
    }

    if (hapd != NULL) {
        FUNC0(hapd);
    }

    return true;
}