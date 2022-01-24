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

/* Variables and functions */
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  WIFI_TXCB_EAPOL_ID ; 
 int /*<<< orphan*/  eapol_txcb ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wpa_config_assoc_ie ; 
 int /*<<< orphan*/  wpa_deauthenticate ; 
 int /*<<< orphan*/  wpa_get_key ; 
 int /*<<< orphan*/  wpa_install_key ; 
 int /*<<< orphan*/  wpa_neg_complete ; 
 int /*<<< orphan*/  wpa_sendto_wrapper ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool  FUNC2(void)
{
    bool ret = true; 
    ret = FUNC1(NULL, wpa_sendto_wrapper,
                 wpa_config_assoc_ie, wpa_install_key, wpa_get_key, wpa_deauthenticate, wpa_neg_complete);
    if(ret) {   
        ret = (FUNC0(eapol_txcb, WIFI_TXCB_EAPOL_ID) == ESP_OK);
    }
    return ret;
}