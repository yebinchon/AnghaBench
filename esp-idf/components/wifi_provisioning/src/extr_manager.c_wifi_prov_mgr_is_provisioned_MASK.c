#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ ssid; } ;
struct TYPE_4__ {TYPE_3__ sta; } ;
typedef  TYPE_1__ wifi_config_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 scalar_t__ ESP_ERR_INVALID_ARG ; 
 scalar_t__ ESP_ERR_INVALID_STATE ; 
 scalar_t__ ESP_FAIL ; 
 int /*<<< orphan*/  ESP_IF_WIFI_STA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  prov_ctx_lock ; 
 scalar_t__ FUNC3 (char const*) ; 

esp_err_t FUNC4(bool *provisioned)
{
    if (!provisioned) {
        return ESP_ERR_INVALID_ARG;
    }

    *provisioned = false;

    if (!prov_ctx_lock) {
        FUNC0(TAG, "Provisioning manager not initialized");
        return ESP_ERR_INVALID_STATE;
    }

    /* Get Wi-Fi Station configuration */
    wifi_config_t wifi_cfg;
    if (FUNC2(ESP_IF_WIFI_STA, &wifi_cfg) != ESP_OK) {
        return ESP_FAIL;
    }

    if (FUNC3((const char *) wifi_cfg.sta.ssid)) {
        *provisioned = true;
        FUNC1(wifi_cfg.sta, "Found");
    }
    return ESP_OK;
}