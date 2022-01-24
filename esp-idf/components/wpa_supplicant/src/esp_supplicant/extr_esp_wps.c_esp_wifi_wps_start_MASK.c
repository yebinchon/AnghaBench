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
 int ESP_ERR_WIFI_STATE ; 
 int ESP_ERR_WIFI_WPS_SM ; 
 int ESP_ERR_WIFI_WPS_TYPE ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  SIG_PP_WPS ; 
 int /*<<< orphan*/  SIG_WPS_START ; 
 scalar_t__ WPS_STATUS_DISABLE ; 
 scalar_t__ WPS_STATUS_SCANNING ; 
 scalar_t__ WPS_TYPE_DISABLE ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_wps_enabled ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC9(int timeout_ms)
{
    if (ESP_OK != FUNC5()) {
        return ESP_ERR_WIFI_MODE;
    }

    FUNC1();

    if (!s_wps_enabled) {
        FUNC4(MSG_ERROR, "wps start: wps not enabled");
        FUNC0();
        return ESP_ERR_WIFI_WPS_SM;
    }

    if (FUNC7() == WPS_TYPE_DISABLE || (FUNC6() != WPS_STATUS_DISABLE && FUNC6() != WPS_STATUS_SCANNING)) {
        FUNC0();
        return ESP_ERR_WIFI_WPS_TYPE;
    }

    if (FUNC2() == 0) {
        FUNC0();
        return ESP_ERR_WIFI_STATE;
    }

    FUNC4(MSG_DEBUG, "wps scan");

#ifdef USE_WPS_TASK
    wps_post_block(SIG_WPS_START, 0);
#else
    FUNC3(SIG_PP_WPS, 0);
#endif

    FUNC0();
    return ESP_OK;
}