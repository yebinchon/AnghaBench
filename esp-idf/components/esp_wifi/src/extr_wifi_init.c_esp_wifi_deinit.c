
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ esp_err_t ;


 int ESP_LOGE (int ,char*,scalar_t__) ;
 scalar_t__ ESP_OK ;
 int TAG ;
 int esp_supplicant_deinit () ;
 scalar_t__ esp_wifi_deinit_internal () ;
 int tcpip_adapter_clear_default_wifi_handlers () ;

esp_err_t esp_wifi_deinit(void)
{
    esp_err_t err = ESP_OK;

    esp_supplicant_deinit();
    err = esp_wifi_deinit_internal();
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "Failed to deinit Wi-Fi driver (0x%x)", err);
    }





    return err;
}
