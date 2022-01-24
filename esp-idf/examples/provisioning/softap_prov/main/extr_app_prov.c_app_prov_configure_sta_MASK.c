#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wifi_config_t ;
typedef  scalar_t__ esp_err_t ;
struct TYPE_2__ {int /*<<< orphan*/  wifi_state; } ;

/* Variables and functions */
 scalar_t__ ESP_FAIL ; 
 int /*<<< orphan*/  ESP_IF_WIFI_STA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  WIFI_MODE_APSTA ; 
 int /*<<< orphan*/  WIFI_PROV_STA_CONNECTING ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 TYPE_1__* g_prov ; 

esp_err_t FUNC5(wifi_config_t *wifi_cfg)
{
    /* Configure WiFi as both AP and Station */
    if (FUNC3(WIFI_MODE_APSTA) != ESP_OK) {
        FUNC0(TAG, "Failed to set WiFi mode");
        return ESP_FAIL;
    }
    /* Configure WiFi station with host credentials
     * provided during provisioning */
    if (FUNC2(ESP_IF_WIFI_STA, wifi_cfg) != ESP_OK) {
        FUNC0(TAG, "Failed to set WiFi configuration");
        return ESP_FAIL;
    }
    /* Restart WiFi */
    if (FUNC4() != ESP_OK) {
        FUNC0(TAG, "Failed to restart WiFi");
        return ESP_FAIL;
    }
    /* Connect to AP */
    if (FUNC1() != ESP_OK) {
        FUNC0(TAG, "Failed to connect WiFi");
        return ESP_FAIL;
    }

    if (g_prov) {
        /* Reset wifi station state for provisioning app */
        g_prov->wifi_state = WIFI_PROV_STA_CONNECTING;
    }
    return ESP_OK;
}