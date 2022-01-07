
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bt_status_t ;
typedef int bt_bdaddr_t ;


 int _btc_storage_get_ble_dev_type (int *) ;
 int btc_config_lock () ;
 int btc_config_unlock () ;

bool btc_storage_get_ble_dev_type(bt_bdaddr_t *bd_addr)
{
    bt_status_t ret;

    btc_config_lock();
    ret = _btc_storage_get_ble_dev_type(bd_addr);
    btc_config_unlock();

    return ret;
}
