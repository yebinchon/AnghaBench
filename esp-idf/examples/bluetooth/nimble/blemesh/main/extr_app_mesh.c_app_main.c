
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ esp_err_t ;


 int ESP_ERROR_CHECK (scalar_t__) ;
 scalar_t__ ESP_ERR_NVS_NEW_VERSION_FOUND ;
 scalar_t__ ESP_ERR_NVS_NO_FREE_PAGES ;
 int ble_store_config_init () ;
 int ble_svc_gap_init () ;
 int ble_svc_gatt_init () ;
 int blemesh_host_task ;
 int bt_mesh_register_gatt () ;
 scalar_t__ esp_nimble_hci_and_controller_init () ;
 int nimble_port_freertos_init (int ) ;
 int nimble_port_init () ;
 scalar_t__ nvs_flash_erase () ;
 scalar_t__ nvs_flash_init () ;

void app_main(void)
{

    esp_err_t ret = nvs_flash_init();
    if (ret == ESP_ERR_NVS_NO_FREE_PAGES || ret == ESP_ERR_NVS_NEW_VERSION_FOUND) {
        ESP_ERROR_CHECK(nvs_flash_erase());
        ret = nvs_flash_init();
    }
    ESP_ERROR_CHECK(ret);

    ESP_ERROR_CHECK(esp_nimble_hci_and_controller_init());
    nimble_port_init();

    ble_svc_gap_init();
    ble_svc_gatt_init();

    bt_mesh_register_gatt();

    ble_store_config_init();

    nimble_port_freertos_init(blemesh_host_task);
}
