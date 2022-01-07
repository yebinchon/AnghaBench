
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ esp_err_t ;


 int BT_BLE_COEX_TAG ;
 int ESP_LOGE (int ,char*,scalar_t__) ;
 int PROFILE_A_APP_ID ;
 int PROFILE_B_APP_ID ;
 scalar_t__ esp_ble_gap_register_callback (int ) ;
 scalar_t__ esp_ble_gatt_set_local_mtu (int) ;
 scalar_t__ esp_ble_gatts_app_register (int ) ;
 scalar_t__ esp_ble_gatts_register_callback (int ) ;
 int gap_event_handler ;
 int gatts_event_handler ;

__attribute__((used)) static void ble_gatts_init(void)
{
    esp_err_t ret = esp_ble_gatts_register_callback(gatts_event_handler);
    if (ret){
        ESP_LOGE(BT_BLE_COEX_TAG, "gatts register error, error code = 0x%x", ret);
        return;
    }
    ret = esp_ble_gap_register_callback(gap_event_handler);
    if (ret){
        ESP_LOGE(BT_BLE_COEX_TAG, "gap register error, error code = 0x%x", ret);
        return;
    }
    ret = esp_ble_gatts_app_register(PROFILE_A_APP_ID);
    if (ret){
        ESP_LOGE(BT_BLE_COEX_TAG, "gatts app register error, error code = 0x%x", ret);
        return;
    }
    ret = esp_ble_gatts_app_register(PROFILE_B_APP_ID);
    if (ret){
        ESP_LOGE(BT_BLE_COEX_TAG, "gatts app register error, error code = 0x%x", ret);
        return;
    }
    esp_err_t local_mtu_ret = esp_ble_gatt_set_local_mtu(500);
    if (local_mtu_ret){
        ESP_LOGE(BT_BLE_COEX_TAG, "set local  MTU failed, error code = 0x%x", local_mtu_ret);
    }
}
