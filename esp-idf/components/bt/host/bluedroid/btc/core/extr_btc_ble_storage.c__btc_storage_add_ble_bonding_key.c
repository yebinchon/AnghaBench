
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int bt_status_t ;
typedef int bt_bdaddr_t ;
typedef int bdstr_t ;
typedef int bdstr ;


 char* BTC_BLE_STORAGE_LE_KEY_LCSRK_STR ;
 char* BTC_BLE_STORAGE_LE_KEY_LENC_STR ;
 char* BTC_BLE_STORAGE_LE_KEY_LID_STR ;
 char* BTC_BLE_STORAGE_LE_KEY_PCSRK_STR ;
 char* BTC_BLE_STORAGE_LE_KEY_PENC_STR ;
 char* BTC_BLE_STORAGE_LE_KEY_PID_STR ;






 int BT_STATUS_FAIL ;
 int BT_STATUS_SUCCESS ;
 int _btc_storage_save () ;
 int bdaddr_to_string (int *,int ,int) ;
 int btc_config_set_bin (int ,char const*,int const*,int) ;

__attribute__((used)) static bt_status_t _btc_storage_add_ble_bonding_key(bt_bdaddr_t *remote_bd_addr,
                                            char *key,
                                            uint8_t key_type,
                                            uint8_t key_length)
{
    bdstr_t bdstr;
    bdaddr_to_string(remote_bd_addr, bdstr, sizeof(bdstr));
    const char* name;

    switch (key_type) {
    case 129:
        name = BTC_BLE_STORAGE_LE_KEY_PENC_STR;
        break;
    case 128:
        name = BTC_BLE_STORAGE_LE_KEY_PID_STR;
        break;
    case 130:
        name = BTC_BLE_STORAGE_LE_KEY_PCSRK_STR;
        break;
    case 132:
        name = BTC_BLE_STORAGE_LE_KEY_LENC_STR;
        break;
    case 133:
        name = BTC_BLE_STORAGE_LE_KEY_LCSRK_STR;
        break;
    case 131:
        name = BTC_BLE_STORAGE_LE_KEY_LID_STR;
        break;
    default:
        return BT_STATUS_FAIL;
    }

    int ret = btc_config_set_bin(bdstr, name, (const uint8_t *)key, key_length);
    _btc_storage_save();
    return ret ? BT_STATUS_SUCCESS : BT_STATUS_FAIL;
}
