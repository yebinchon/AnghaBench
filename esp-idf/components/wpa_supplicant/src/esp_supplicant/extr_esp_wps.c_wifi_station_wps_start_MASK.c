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
struct wps_sm {int is_wps_scan; int /*<<< orphan*/  wps_timeout_timer; int /*<<< orphan*/  scan_cnt; int /*<<< orphan*/  wps; } ;

/* Variables and functions */
 int ESP_FAIL ; 
 int ESP_OK ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  WPS_CALC_KEY_PRE_CALC ; 
#define  WPS_STATUS_DISABLE 129 
#define  WPS_STATUS_SCANNING 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 () ; 
 struct wps_sm* FUNC7 () ; 

int FUNC8(void)
{
    struct wps_sm *sm = FUNC7();

    if (!sm) {
        FUNC4(MSG_ERROR, "WPS: wps not initial");
        return ESP_FAIL;
    }

    FUNC1(&sm->wps_timeout_timer, 120000, 0); /* 120s total */

    switch (FUNC6()) {
    case WPS_STATUS_DISABLE: {
        sm->is_wps_scan = true;

        FUNC5(sm->wps, NULL, WPS_CALC_KEY_PRE_CALC);

        FUNC3();


        break;
    }
    case WPS_STATUS_SCANNING:
        sm->scan_cnt = 0;
        FUNC2(&sm->wps_timeout_timer);
        FUNC1(&sm->wps_timeout_timer, 120000, 0); /* 120s total */
        break;
    default:
        break;
    }
    FUNC0(true);
    return ESP_OK;
}