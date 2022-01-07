
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ esp_err_t ;
typedef int esp_bt_controller_config_t ;


 int BT_CONTROLLER_INIT_CONFIG_DEFAULT () ;
 int ESP_BT_MODE_BLE ;
 int ESP_BT_MODE_CLASSIC_BT ;
 int ESP_ERROR_CHECK (scalar_t__) ;
 scalar_t__ ESP_ERR_NVS_NEW_VERSION_FOUND ;
 scalar_t__ ESP_ERR_NVS_NO_FREE_PAGES ;
 int ESP_LOGI (int ,char*,int ) ;
 scalar_t__ ESP_OK ;
 int bleAdvtTask ;
 scalar_t__ esp_bt_controller_enable (int ) ;
 scalar_t__ esp_bt_controller_init (int *) ;
 scalar_t__ esp_bt_controller_mem_release (int ) ;
 int esp_err_to_name (scalar_t__) ;
 scalar_t__ nvs_flash_erase () ;
 scalar_t__ nvs_flash_init () ;
 int tag ;
 int xTaskCreatePinnedToCore (int *,char*,int,int *,int,int *,int ) ;

void app_main(void)
{

    esp_err_t ret = nvs_flash_init();
    if (ret == ESP_ERR_NVS_NO_FREE_PAGES || ret == ESP_ERR_NVS_NEW_VERSION_FOUND) {
        ESP_ERROR_CHECK(nvs_flash_erase());
        ret = nvs_flash_init();
    }
    ESP_ERROR_CHECK( ret );
    esp_bt_controller_config_t bt_cfg = BT_CONTROLLER_INIT_CONFIG_DEFAULT();

    ret = esp_bt_controller_mem_release(ESP_BT_MODE_CLASSIC_BT);
    if (ret) {
        ESP_LOGI(tag, "Bluetooth controller release classic bt memory failed: %s", esp_err_to_name(ret));
        return;
    }

    if ((ret = esp_bt_controller_init(&bt_cfg)) != ESP_OK) {
        ESP_LOGI(tag, "Bluetooth controller initialize failed: %s", esp_err_to_name(ret));
        return;
    }

    if ((ret = esp_bt_controller_enable(ESP_BT_MODE_BLE)) != ESP_OK) {
        ESP_LOGI(tag, "Bluetooth controller enable failed: %s", esp_err_to_name(ret));
        return;
    }
    xTaskCreatePinnedToCore(&bleAdvtTask, "bleAdvtTask", 2048, ((void*)0), 5, ((void*)0), 0);
}
