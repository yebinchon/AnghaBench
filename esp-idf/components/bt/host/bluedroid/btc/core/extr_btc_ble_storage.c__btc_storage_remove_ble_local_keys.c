
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bt_status_t ;


 int BTC_BLE_STORAGE_LE_LOCAL_KEY_DHK_STR ;
 int BTC_BLE_STORAGE_LE_LOCAL_KEY_ER_STR ;
 int BTC_BLE_STORAGE_LE_LOCAL_KEY_IRK_STR ;
 int BTC_BLE_STORAGE_LE_LOCAL_KEY_IR_STR ;
 int BTC_BLE_STORAGE_LOCAL_ADAPTER_STR ;
 int BT_STATUS_FAIL ;
 int BT_STATUS_SUCCESS ;
 int _btc_storage_save () ;
 scalar_t__ btc_config_exist (int ,int ) ;
 int btc_config_remove (int ,int ) ;

__attribute__((used)) static bt_status_t _btc_storage_remove_ble_local_keys(void)
{
    int ret = 1;

    if (btc_config_exist(BTC_BLE_STORAGE_LOCAL_ADAPTER_STR, BTC_BLE_STORAGE_LE_LOCAL_KEY_IR_STR)) {
        ret &= btc_config_remove(BTC_BLE_STORAGE_LOCAL_ADAPTER_STR, BTC_BLE_STORAGE_LE_LOCAL_KEY_IR_STR);
    }
    if (btc_config_exist(BTC_BLE_STORAGE_LOCAL_ADAPTER_STR, BTC_BLE_STORAGE_LE_LOCAL_KEY_IRK_STR)) {
        ret &= btc_config_remove(BTC_BLE_STORAGE_LOCAL_ADAPTER_STR, BTC_BLE_STORAGE_LE_LOCAL_KEY_IRK_STR);
    }
    if (btc_config_exist(BTC_BLE_STORAGE_LOCAL_ADAPTER_STR, BTC_BLE_STORAGE_LE_LOCAL_KEY_DHK_STR)) {
        ret &= btc_config_remove(BTC_BLE_STORAGE_LOCAL_ADAPTER_STR, BTC_BLE_STORAGE_LE_LOCAL_KEY_DHK_STR);
    }
    if (btc_config_exist(BTC_BLE_STORAGE_LOCAL_ADAPTER_STR, BTC_BLE_STORAGE_LE_LOCAL_KEY_ER_STR)) {
        ret &= btc_config_remove(BTC_BLE_STORAGE_LOCAL_ADAPTER_STR, BTC_BLE_STORAGE_LE_LOCAL_KEY_ER_STR);
    }
    _btc_storage_save();

    return ret ? BT_STATUS_SUCCESS : BT_STATUS_FAIL;
}
