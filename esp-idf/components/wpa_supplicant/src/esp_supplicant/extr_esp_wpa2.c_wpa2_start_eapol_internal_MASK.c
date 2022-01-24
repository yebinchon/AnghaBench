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
struct eap_sm {int dummy; } ;

/* Variables and functions */
 int ESP_FAIL ; 
 int ESP_OK ; 
 int /*<<< orphan*/  ETH_P_EAPOL ; 
 int /*<<< orphan*/  IEEE802_1X_TYPE_EAPOL_START ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  WPA2_ENT_EAP_STATE_IN_PROGRESS ; 
 int WPA_ERR_INVALID_BSSID ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct eap_sm* gEapSm ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct eap_sm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct eap_sm*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 () ; 

__attribute__((used)) static int FUNC7(void)
{
    struct eap_sm *sm = gEapSm;
    int ret = 0;
    u8 bssid[6];
    u8 *buf;
    size_t len;

    if (!sm) {
        return ESP_FAIL;
    }
    if (FUNC6()) {
        FUNC5(MSG_DEBUG,
                "RSN: PMKSA caching - do not send EAPOL-Start");
        return ESP_FAIL;
    }

    ret = FUNC0(bssid);
    if (ret != 0) {
        FUNC5(MSG_ERROR, "bssid is empty!");
        return WPA_ERR_INVALID_BSSID;
    }

    buf = FUNC2(sm, IEEE802_1X_TYPE_EAPOL_START, (u8 *)"", 0, &len, NULL);
    if (!buf) {
        return ESP_FAIL;
    }

    FUNC1(WPA2_ENT_EAP_STATE_IN_PROGRESS);
    FUNC3(sm, bssid, ETH_P_EAPOL, buf, len);
    FUNC4(buf);
    return ESP_OK;
}