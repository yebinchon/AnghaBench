#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * param; scalar_t__ fn; } ;
typedef  TYPE_1__ wifi_wpa2_param_t ;
typedef  scalar_t__ wifi_wpa2_fn_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  WPA2_STATE_ENABLED ; 
 scalar_t__ esp_wifi_sta_wpa2_ent_enable_fn ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 

esp_err_t FUNC6(void)
{
    wifi_wpa2_param_t param;
    esp_err_t ret;

    FUNC1();

    if (FUNC3()) {
        FUNC5(MSG_INFO, "WPA2: already enabled");
        FUNC2();
        return ESP_OK;
    }

    param.fn = (wifi_wpa2_fn_t)esp_wifi_sta_wpa2_ent_enable_fn;
    param.param = NULL;

    ret = FUNC0(&param);

    if (ESP_OK == ret) {
        FUNC4(WPA2_STATE_ENABLED);
    } else {
        FUNC5(MSG_ERROR, "failed to enable wpa2 ret=%d", ret);
    }

    FUNC2();

    return ret;
}