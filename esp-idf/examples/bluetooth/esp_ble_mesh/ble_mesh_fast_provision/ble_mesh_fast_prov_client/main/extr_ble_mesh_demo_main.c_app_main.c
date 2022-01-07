
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ esp_err_t ;


 int ESP_ERROR_CHECK (scalar_t__) ;
 scalar_t__ ESP_ERR_NVS_NO_FREE_PAGES ;
 int ESP_LOGE (int ,char*,scalar_t__) ;
 int ESP_LOGI (int ,char*) ;
 int TAG ;
 int ble_mesh_get_dev_uuid (int ) ;
 scalar_t__ ble_mesh_init () ;
 scalar_t__ bluetooth_init () ;
 int dev_uuid ;
 scalar_t__ nvs_flash_erase () ;
 scalar_t__ nvs_flash_init () ;

void app_main(void)
{
    esp_err_t err;

    ESP_LOGI(TAG, "Initializing...");

    err = nvs_flash_init();
    if (err == ESP_ERR_NVS_NO_FREE_PAGES) {
        ESP_ERROR_CHECK(nvs_flash_erase());
        err = nvs_flash_init();
    }
    ESP_ERROR_CHECK(err);

    err = bluetooth_init();
    if (err) {
        ESP_LOGE(TAG, "esp32_bluetooth_init failed (err %d)", err);
        return;
    }

    ble_mesh_get_dev_uuid(dev_uuid);


    err = ble_mesh_init();
    if (err) {
        ESP_LOGE(TAG, "Failed to initialize BLE Mesh (err %d)", err);
    }
}
