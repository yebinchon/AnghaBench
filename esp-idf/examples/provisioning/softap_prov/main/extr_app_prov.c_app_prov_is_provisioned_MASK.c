#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ password; scalar_t__ ssid; } ;
struct TYPE_5__ {TYPE_1__ sta; } ;
typedef  TYPE_2__ wifi_config_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 scalar_t__ ESP_FAIL ; 
 int /*<<< orphan*/  ESP_IF_WIFI_STA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (char const*) ; 

esp_err_t FUNC4(bool *provisioned)
{
    *provisioned = false;

#ifdef CONFIG_EXAMPLE_RESET_PROVISIONED
    nvs_flash_erase();
#endif

    /* Get WiFi Station configuration */
    wifi_config_t wifi_cfg;
    if (FUNC1(ESP_IF_WIFI_STA, &wifi_cfg) != ESP_OK) {
        return ESP_FAIL;
    }

    if (FUNC3((const char*) wifi_cfg.sta.ssid)) {
        *provisioned = true;
        FUNC0(TAG, "Found ssid %s",     (const char*) wifi_cfg.sta.ssid);
        FUNC0(TAG, "Found password %s", (const char*) wifi_cfg.sta.password);
    }
    return ESP_OK;
}