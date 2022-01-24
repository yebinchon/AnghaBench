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
struct wps_sm {int /*<<< orphan*/  wps_eapol_start_timer; } ;

/* Variables and functions */
 int ESP_ERR_NO_MEM ; 
 int ESP_FAIL ; 
 int ESP_OK ; 
 int /*<<< orphan*/  ETH_P_EAPOL ; 
 int /*<<< orphan*/  IEEE802_1X_TYPE_EAPOL_START ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct wps_sm* gWpsSm ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC3 (struct wps_sm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct wps_sm*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(void)
{
    struct wps_sm *sm = gWpsSm;
    u8 bssid[6];
    u8 *buf;
    int len;
    int ret = 0;

    ret = FUNC0(bssid);
    if (ret != 0) {
        FUNC2(MSG_ERROR, "bssid is empty!");
        return ret;
    }

    if (!sm) {
        return ESP_FAIL;
    }

    FUNC2(MSG_DEBUG,  "WPS: Send EAPOL START.");
    buf = FUNC3(sm, IEEE802_1X_TYPE_EAPOL_START, (u8 *)"", 0, (size_t *)&len, NULL);
    if (!buf) {
        return ESP_ERR_NO_MEM;
    }

    FUNC4(sm, bssid, ETH_P_EAPOL, buf, len);
    FUNC5(buf);

    FUNC1(&sm->wps_eapol_start_timer, 3000, 0);

    return ESP_OK;
}