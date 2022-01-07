
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int bt_status_t ;
typedef int bt_bdaddr_t ;
typedef int bdstr_t ;
typedef int bdstr ;


 int BTC_BLE_STORAGE_DEV_TYPE_STR ;
 int BT_DEVICE_TYPE_BLE ;
 int BT_STATUS_FAIL ;
 int BT_STATUS_SUCCESS ;
 int _btc_storage_save () ;
 int bdaddr_to_string (int *,int ,int) ;
 int btc_config_get_int (int ,int ,int*) ;
 int btc_config_set_int (int ,int ,int) ;

__attribute__((used)) static bt_status_t _btc_storage_set_ble_dev_type(bt_bdaddr_t *bd_addr, bool flush)
{
    bool ret = 1;
    bdstr_t bdstr;
    uint32_t dev_type = 0;

    bdaddr_to_string(bd_addr, bdstr, sizeof(bdstr));

    btc_config_get_int(bdstr, BTC_BLE_STORAGE_DEV_TYPE_STR, (int *)&dev_type);
    ret = btc_config_set_int(bdstr, BTC_BLE_STORAGE_DEV_TYPE_STR, BT_DEVICE_TYPE_BLE|dev_type);
    if (ret == 0) {
        return BT_STATUS_FAIL;
    }

    if (flush) {
        _btc_storage_save();
    }

    return BT_STATUS_SUCCESS;
}
