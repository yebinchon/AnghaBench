
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_bt_controller_config_t ;


 int BT_CONTROLLER_INIT_CONFIG_DEFAULT () ;
 int ESP_BT_MODE_BLE ;
 int ESP_BT_MODE_CLASSIC_BT ;
 int ESP_ERROR_CHECK (int ) ;
 int ble_scan_params ;
 int esp_ble_gap_set_scan_params (int *) ;
 int esp_bt_controller_enable (int ) ;
 int esp_bt_controller_init (int *) ;
 int esp_bt_controller_mem_release (int ) ;
 int esp_eddystone_init () ;
 int nvs_flash_init () ;

void app_main(void)
{
    ESP_ERROR_CHECK(nvs_flash_init());
    ESP_ERROR_CHECK(esp_bt_controller_mem_release(ESP_BT_MODE_CLASSIC_BT));
    esp_bt_controller_config_t bt_cfg = BT_CONTROLLER_INIT_CONFIG_DEFAULT();
    esp_bt_controller_init(&bt_cfg);
    esp_bt_controller_enable(ESP_BT_MODE_BLE);

    esp_eddystone_init();


    esp_ble_gap_set_scan_params(&ble_scan_params);
}
