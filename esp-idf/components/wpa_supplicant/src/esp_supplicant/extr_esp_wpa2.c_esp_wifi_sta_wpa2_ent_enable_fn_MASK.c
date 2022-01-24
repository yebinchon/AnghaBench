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
struct wpa2_funcs {int /*<<< orphan*/  wpa2_deinit; int /*<<< orphan*/  wpa2_init; int /*<<< orphan*/  wpa2_start; int /*<<< orphan*/  wpa2_sm_rx_eapol; } ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_NO_MEM ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  WPA2_VERSION ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  eap_peer_sm_deinit ; 
 int /*<<< orphan*/  eap_peer_sm_init ; 
 int /*<<< orphan*/  FUNC1 (struct wpa2_funcs*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  wpa2_ent_rx_eapol ; 
 int /*<<< orphan*/  wpa2_start_eapol ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 

esp_err_t FUNC4(void *arg)
{
    struct wpa2_funcs *wpa2_cb;

    FUNC3(MSG_INFO, "WPA2 ENTERPRISE VERSION: [%s] enable\n",
               WPA2_VERSION);

    wpa2_cb = (struct wpa2_funcs *)FUNC2(sizeof(struct wpa2_funcs));
    if (wpa2_cb == NULL) {
        FUNC3(MSG_ERROR, "WPA2: no mem for wpa2 cb\n");
        return ESP_ERR_NO_MEM;
    }

    wpa2_cb->wpa2_sm_rx_eapol = wpa2_ent_rx_eapol;
    wpa2_cb->wpa2_start = wpa2_start_eapol;
    wpa2_cb->wpa2_init = eap_peer_sm_init;
    wpa2_cb->wpa2_deinit = eap_peer_sm_deinit;

    FUNC1(wpa2_cb);

    FUNC3(MSG_DEBUG, "WPA2 ENTERPRISE CRYPTO INIT.\r\n");

#ifdef EAP_PEER_METHOD
    if (eap_peer_register_methods()) {
        wpa_printf(MSG_ERROR, "Register EAP Peer methods Failure\n");
    }
#endif
    return ESP_OK;
}