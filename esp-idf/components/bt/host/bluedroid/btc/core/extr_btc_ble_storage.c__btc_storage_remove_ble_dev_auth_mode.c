
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int bt_status_t ;
typedef int bt_bdaddr_t ;
typedef int bdstr_t ;
typedef int bdstr ;


 int BTC_BLE_STORAGE_LE_AUTH_MODE_STR ;
 int BT_STATUS_FAIL ;
 int BT_STATUS_SUCCESS ;
 int _btc_storage_save () ;
 int bdaddr_to_string (int *,int ,int) ;
 int btc_config_get_int (int ,int ,int*) ;
 int btc_config_remove (int ,int ) ;

__attribute__((used)) static bt_status_t _btc_storage_remove_ble_dev_auth_mode(bt_bdaddr_t *remote_bd_addr, bool flush)
{
    bool ret = 1;
    bdstr_t bdstr;
    uint32_t auth_mode = 0;

    bdaddr_to_string(remote_bd_addr, bdstr, sizeof(bdstr));

    ret = btc_config_get_int(bdstr, BTC_BLE_STORAGE_LE_AUTH_MODE_STR, (int *)&auth_mode);
    if (ret == 0) {

        return BT_STATUS_SUCCESS;
    }

    ret = btc_config_remove(bdstr, BTC_BLE_STORAGE_LE_AUTH_MODE_STR);
    if (ret == 0) {
        return BT_STATUS_FAIL;
    }

    if (flush) {
        _btc_storage_save();
    }

    return BT_STATUS_SUCCESS;
}
