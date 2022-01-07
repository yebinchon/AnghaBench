
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int ibeacon_adv_data ;
typedef scalar_t__ esp_err_t ;
typedef int esp_bt_controller_config_t ;
typedef int esp_ble_ibeacon_t ;


 int BT_CONTROLLER_INIT_CONFIG_DEFAULT () ;
 int DEMO_TAG ;
 int ESP_BT_MODE_BLE ;
 int ESP_BT_MODE_CLASSIC_BT ;
 int ESP_ERROR_CHECK (int ) ;
 int ESP_LOGE (int ,char*,int ) ;
 scalar_t__ ESP_OK ;
 int ble_ibeacon_init () ;
 int ble_scan_params ;
 scalar_t__ esp_ble_config_ibeacon_data (int *,int *) ;
 int esp_ble_gap_config_adv_data_raw (int *,int) ;
 int esp_ble_gap_set_scan_params (int *) ;
 int esp_bt_controller_enable (int ) ;
 int esp_bt_controller_init (int *) ;
 int esp_bt_controller_mem_release (int ) ;
 int esp_err_to_name (scalar_t__) ;
 int nvs_flash_init () ;
 int vendor_config ;

void app_main(void)
{
    ESP_ERROR_CHECK(nvs_flash_init());
    ESP_ERROR_CHECK(esp_bt_controller_mem_release(ESP_BT_MODE_CLASSIC_BT));
    esp_bt_controller_config_t bt_cfg = BT_CONTROLLER_INIT_CONFIG_DEFAULT();
    esp_bt_controller_init(&bt_cfg);
    esp_bt_controller_enable(ESP_BT_MODE_BLE);

    ble_ibeacon_init();



    esp_ble_gap_set_scan_params(&ble_scan_params);
}
