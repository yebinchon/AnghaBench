
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int bt_status_t ;


 char* BTC_BLE_STORAGE_LE_LOCAL_KEY_DHK_STR ;
 char* BTC_BLE_STORAGE_LE_LOCAL_KEY_ER_STR ;
 char* BTC_BLE_STORAGE_LE_LOCAL_KEY_IRK_STR ;
 char* BTC_BLE_STORAGE_LE_LOCAL_KEY_IR_STR ;
 int BTC_BLE_STORAGE_LOCAL_ADAPTER_STR ;




 int BT_STATUS_FAIL ;
 int BT_STATUS_SUCCESS ;
 int btc_config_get_bin (int ,char const*,int*,size_t*) ;

__attribute__((used)) static bt_status_t _btc_storage_get_ble_local_key(uint8_t key_type,
                                          char *key_value,
                                          int key_length)
{
    const char* name;
    switch (key_type) {
    case 129:
        name = BTC_BLE_STORAGE_LE_LOCAL_KEY_IR_STR;
        break;
    case 128:
        name = BTC_BLE_STORAGE_LE_LOCAL_KEY_IRK_STR;
        break;
    case 131:
        name = BTC_BLE_STORAGE_LE_LOCAL_KEY_DHK_STR;
        break;
    case 130:
        name = BTC_BLE_STORAGE_LE_LOCAL_KEY_ER_STR;
        break;
    default:
        return BT_STATUS_FAIL;
    }
    size_t length = key_length;

    int ret = btc_config_get_bin(BTC_BLE_STORAGE_LOCAL_ADAPTER_STR, name, (uint8_t *)key_value, &length);

    return ret ? BT_STATUS_SUCCESS : BT_STATUS_FAIL;
}
