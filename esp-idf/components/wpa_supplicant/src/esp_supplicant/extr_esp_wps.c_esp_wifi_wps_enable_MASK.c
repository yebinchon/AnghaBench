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
typedef  int /*<<< orphan*/  esp_wps_config_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int ESP_ERR_WIFI_MODE ; 
 int ESP_OK ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  SIG_WPS_ENABLE ; 
 int /*<<< orphan*/  WPS_TASK_STACK_SIZE ; 
 int s_wps_enabled ; 
 int FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 () ; 

int FUNC8(const esp_wps_config_t *config)
{
    int ret;

    if (ESP_OK != FUNC4()) {
        return ESP_ERR_WIFI_MODE;
    }

    FUNC1();
    if (s_wps_enabled) {
        FUNC0();
        FUNC3(MSG_DEBUG, "wps enable: already enabled");
        return ESP_OK;
    }

#ifdef USE_WPS_TASK
    ret = wps_task_init();
    if (ESP_OK != ret) {
        API_MUTEX_GIVE();
        return ret;
    }

    ret = wps_post_block(SIG_WPS_ENABLE, (esp_wps_config_t *)config);
    if (ESP_OK != ret) {
        wps_task_deinit();
        API_MUTEX_GIVE();
        return ret;
    }

    s_wps_enabled = true;
    wpa_printf(MSG_DEBUG, "wifi wps task: prio:%d, stack:%d\n", 2, WPS_TASK_STACK_SIZE);
    API_MUTEX_GIVE();
    return ret;
#else
    ret = FUNC2(config);
    FUNC0();
    return ret;
#endif
}