
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ESP_BLUEDROID_STATUS_ENABLED ;
 int ESP_FAIL ;
 int btc_storage_get_num_ble_bond_devices () ;
 scalar_t__ esp_bluedroid_get_status () ;

int esp_ble_get_bond_device_num(void)
{
    if (esp_bluedroid_get_status() != ESP_BLUEDROID_STATUS_ENABLED) {
        return ESP_FAIL;
    }

    return btc_storage_get_num_ble_bond_devices();
}
