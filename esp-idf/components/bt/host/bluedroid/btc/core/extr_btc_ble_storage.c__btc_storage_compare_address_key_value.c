
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int bt_bdaddr_t ;
typedef int bdstr_t ;
typedef int bdstr ;


 char* BTC_BLE_STORAGE_LE_KEY_LCSRK_STR ;
 char* BTC_BLE_STORAGE_LE_KEY_LENC_STR ;
 char* BTC_BLE_STORAGE_LE_KEY_LID_STR ;
 char* BTC_BLE_STORAGE_LE_KEY_PCSRK_STR ;
 char* BTC_BLE_STORAGE_LE_KEY_PENC_STR ;
 char* BTC_BLE_STORAGE_LE_KEY_PID_STR ;






 int bdaddr_to_string (int *,int ,int) ;
 int btc_compare_address_key_value (int ,char const*,void*,int) ;

bool _btc_storage_compare_address_key_value(bt_bdaddr_t *remote_bd_addr,
                                                   uint8_t key_type, void *key_value, int key_length)
{
    bdstr_t bdstr;
    bdaddr_to_string(remote_bd_addr, bdstr, sizeof(bdstr));
    const char *key_type_str;
    switch (key_type) {
    case 129:
        key_type_str = BTC_BLE_STORAGE_LE_KEY_PENC_STR;
        break;
    case 128:
        key_type_str = BTC_BLE_STORAGE_LE_KEY_PID_STR;
        break;
    case 130:
        key_type_str = BTC_BLE_STORAGE_LE_KEY_PCSRK_STR;
        break;
    case 132:
        key_type_str = BTC_BLE_STORAGE_LE_KEY_LENC_STR;
        break;
    case 133:
        key_type_str = BTC_BLE_STORAGE_LE_KEY_LCSRK_STR;
        break;
    case 131:
        key_type_str = BTC_BLE_STORAGE_LE_KEY_LID_STR;
    default:
        return 0;
    }

    return btc_compare_address_key_value(bdstr, key_type_str, key_value, key_length);
}
