
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wifi_init_config_t ;
typedef scalar_t__ esp_err_t ;


 int ESP_LOGE (int ,char*,scalar_t__) ;
 int ESP_LOGW (int ,char*,scalar_t__) ;
 scalar_t__ ESP_OK ;
 int ESP_PM_APB_FREQ_MAX ;
 int TAG ;
 scalar_t__ esp_pm_lock_create (int ,int ,char*,int **) ;
 scalar_t__ esp_supplicant_init () ;
 scalar_t__ esp_wifi_deinit () ;
 scalar_t__ esp_wifi_init_internal (int const*) ;
 int esp_wifi_internal_update_mac_time ;
 int esp_wifi_set_debug_log () ;
 int s_wifi_mac_time_update_cb ;
 int * s_wifi_modem_sleep_lock ;
 scalar_t__ tcpip_adapter_set_default_wifi_handlers () ;

esp_err_t esp_wifi_init(const wifi_init_config_t *config)
{
    esp_err_t result = esp_wifi_init_internal(config);
    if (result == ESP_OK) {
        esp_wifi_set_debug_log();




        result = esp_supplicant_init();
        if (result != ESP_OK) {
            ESP_LOGE(TAG, "Failed to init supplicant (0x%x)", result);
            esp_err_t deinit_ret = esp_wifi_deinit();
            if (deinit_ret != ESP_OK) {
                ESP_LOGE(TAG, "Failed to deinit Wi-Fi (0x%x)", deinit_ret);
            }

            return result;
        }
    }

    return result;
}
