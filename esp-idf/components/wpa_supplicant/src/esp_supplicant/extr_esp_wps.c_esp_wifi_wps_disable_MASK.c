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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int ESP_ERR_WIFI_MODE ; 
 int ESP_OK ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  SIG_WPS_DISABLE ; 
 int /*<<< orphan*/  WPS_TYPE_DISABLE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int s_wps_enabled ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 

int FUNC11(void)
{
    int ret = 0;

    if (ESP_OK != FUNC6()) {
        return ESP_ERR_WIFI_MODE;
    }

    FUNC1();

    if (!s_wps_enabled) {
        FUNC5(MSG_DEBUG, "wps disable: already disabled");
        FUNC0();
        return ESP_OK;
    }

    FUNC5(MSG_INFO, "wifi_wps_disable\n");
    FUNC9(WPS_TYPE_DISABLE); /* Notify WiFi task */

    /* Call wps_delete_timer to delete all WPS timer, no timer will call wps_post()
     * to post message to wps_task once this function returns.
     */
    FUNC7();

#ifdef USE_WPS_TASK
    ret = wps_post_block(SIG_WPS_DISABLE, 0);
#else
    ret = FUNC4();
#endif

    if (ESP_OK != ret) {
        FUNC5(MSG_ERROR, "wps disable: failed to disable wps, ret=%d", ret);
    }

    FUNC2();
    FUNC3(false);
    FUNC10();
    s_wps_enabled = false;
    FUNC0();
    return ESP_OK;
}