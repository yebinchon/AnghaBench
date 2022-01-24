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
typedef  int /*<<< orphan*/  wifi_init_config_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  ESP_PM_APB_FREQ_MAX ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  esp_wifi_internal_update_mac_time ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  s_wifi_mac_time_update_cb ; 
 int /*<<< orphan*/ * s_wifi_modem_sleep_lock ; 
 scalar_t__ FUNC7 () ; 

esp_err_t FUNC8(const wifi_init_config_t *config)
{
#ifdef CONFIG_PM_ENABLE
    if (s_wifi_modem_sleep_lock == NULL) {
        esp_err_t err = esp_pm_lock_create(ESP_PM_APB_FREQ_MAX, 0, "wifi",
                &s_wifi_modem_sleep_lock);
        if (err != ESP_OK) {
            return err;
        }
    }
#endif
#if CONFIG_ESP_NETIF_TCPIP_ADAPTER_COMPATIBLE_LAYER
    esp_err_t err = tcpip_adapter_set_default_wifi_handlers();
    if (err != ESP_OK) {
        ESP_LOGW(TAG, "Failed to set default Wi-Fi event handlers (0x%x)", err);
    }
#endif
    esp_err_t result = FUNC5(config);
    if (result == ESP_OK) {
        FUNC6();
#if CONFIG_IDF_TARGET_ESP32
        s_wifi_mac_time_update_cb = esp_wifi_internal_update_mac_time;
#endif

        result = FUNC3();
        if (result != ESP_OK) {
            FUNC0(TAG, "Failed to init supplicant (0x%x)", result);
            esp_err_t deinit_ret = FUNC4();
            if (deinit_ret != ESP_OK) {
                FUNC0(TAG, "Failed to deinit Wi-Fi (0x%x)", deinit_ret);
            }

            return result;
        } 
    }

    return result;
}