
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int light_sleep_enable; int min_freq_mhz; int max_freq_mhz; } ;
typedef TYPE_1__ esp_pm_config_esp32_t ;
typedef scalar_t__ esp_err_t ;


 int CONFIG_EXAMPLE_MAX_CPU_FREQ_MHZ ;
 int CONFIG_EXAMPLE_MIN_CPU_FREQ_MHZ ;
 int ESP_ERROR_CHECK (scalar_t__) ;
 scalar_t__ ESP_ERR_NVS_NEW_VERSION_FOUND ;
 scalar_t__ ESP_ERR_NVS_NO_FREE_PAGES ;
 scalar_t__ esp_pm_configure (TYPE_1__*) ;
 scalar_t__ nvs_flash_erase () ;
 scalar_t__ nvs_flash_init () ;
 int wifi_power_save () ;

void app_main(void)
{

    esp_err_t ret = nvs_flash_init();
    if (ret == ESP_ERR_NVS_NO_FREE_PAGES || ret == ESP_ERR_NVS_NEW_VERSION_FOUND) {
        ESP_ERROR_CHECK(nvs_flash_erase());
        ret = nvs_flash_init();
    }
    ESP_ERROR_CHECK( ret );
    wifi_power_save();
}
