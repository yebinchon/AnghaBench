#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct hostapd_wpa_psk {int /*<<< orphan*/  psk; } ;
struct hostapd_ssid {struct hostapd_wpa_psk* wpa_psk; int /*<<< orphan*/  ssid_len; scalar_t__ ssid; scalar_t__ wpa_passphrase; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  PMK_LEN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC9(struct hostapd_ssid *ssid)
{
    ssid->wpa_psk = (struct hostapd_wpa_psk *)FUNC2(sizeof(struct hostapd_wpa_psk));
    if (ssid->wpa_psk == NULL) {
    	FUNC8(MSG_ERROR, "Unable to alloc space for PSK");
        return -1;
    }
    FUNC5(MSG_DEBUG, "SSID",
              (u8 *) ssid->ssid, ssid->ssid_len);
    FUNC6(MSG_DEBUG, "PSK (ASCII passphrase)",
                  (u8 *) ssid->wpa_passphrase,
                  FUNC4(ssid->wpa_passphrase));
#ifdef ESP_SUPPLICANT
    memcpy(ssid->wpa_psk->psk, esp_wifi_ap_get_prof_pmk_internal(), PMK_LEN);
#else
    /* It's too SLOW */
    FUNC3(ssid->wpa_passphrase,
            ssid->ssid, ssid->ssid_len,
            4096, ssid->wpa_psk->psk, PMK_LEN);
#endif
    FUNC7(MSG_DEBUG, "PSK (from passphrase)",
            ssid->wpa_psk->psk, PMK_LEN);
    return 0;
}