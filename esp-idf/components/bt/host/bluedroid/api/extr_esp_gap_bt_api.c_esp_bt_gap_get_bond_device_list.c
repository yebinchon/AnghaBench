
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_err_t ;
typedef int esp_bd_addr_t ;
typedef int bt_bdaddr_t ;


 int BT_STATUS_SUCCESS ;
 scalar_t__ ESP_BLUEDROID_STATUS_ENABLED ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_FAIL ;
 int ESP_OK ;
 int btc_storage_get_bonded_bt_devices_list (int *,int) ;
 int btc_storage_get_num_bt_bond_devices () ;
 scalar_t__ esp_bluedroid_get_status () ;

esp_err_t esp_bt_gap_get_bond_device_list(int *dev_num, esp_bd_addr_t *dev_list)
{
    int ret;
    int dev_num_total;

    if (dev_num == ((void*)0) || dev_list == ((void*)0)) {
        return ESP_ERR_INVALID_ARG;
    }

    if (esp_bluedroid_get_status() != ESP_BLUEDROID_STATUS_ENABLED) {
        return ESP_ERR_INVALID_STATE;
    }

    dev_num_total = btc_storage_get_num_bt_bond_devices();
    if (*dev_num > dev_num_total) {
        *dev_num = dev_num_total;
    }

    ret = btc_storage_get_bonded_bt_devices_list((bt_bdaddr_t *)dev_list, *dev_num);

    return (ret == BT_STATUS_SUCCESS ? ESP_OK : ESP_FAIL);
}
