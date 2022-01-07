
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bt_status_t ;
typedef int bt_bdaddr_t ;
typedef int bdstr_t ;
typedef int bdstr ;


 int BTC_BLE_STORAGE_LE_AUTH_MODE_STR ;
 int BT_STATUS_FAIL ;
 int BT_STATUS_SUCCESS ;
 int bdaddr_to_string (int *,int ,int) ;
 int btc_config_get_int (int ,int ,int*) ;

__attribute__((used)) static bt_status_t _btc_storage_get_ble_dev_auth_mode(bt_bdaddr_t *remote_bd_addr, int* auth_mode)
{
    bdstr_t bdstr;
    bdaddr_to_string(remote_bd_addr, bdstr, sizeof(bdstr));
    int ret = btc_config_get_int(bdstr, BTC_BLE_STORAGE_LE_AUTH_MODE_STR, auth_mode);
    return ret ? BT_STATUS_SUCCESS : BT_STATUS_FAIL;
}
