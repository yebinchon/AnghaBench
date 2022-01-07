
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bt_status_t ;
typedef int bt_bdaddr_t ;


 int _btc_storage_remove_ble_bonding_keys (int *) ;
 int btc_config_lock () ;
 int btc_config_unlock () ;

bt_status_t btc_storage_remove_ble_bonding_keys(bt_bdaddr_t *remote_bd_addr)
{
    bt_status_t ret;

    btc_config_lock();
    ret = _btc_storage_remove_ble_bonding_keys(remote_bd_addr);
    btc_config_unlock();

    return ret;
}
