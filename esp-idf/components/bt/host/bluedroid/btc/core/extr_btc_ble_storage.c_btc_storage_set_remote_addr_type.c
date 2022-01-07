
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int bt_status_t ;
typedef int bt_bdaddr_t ;


 int _btc_storage_set_remote_addr_type (int *,int ,int) ;
 int btc_config_lock () ;
 int btc_config_unlock () ;

bt_status_t btc_storage_set_remote_addr_type(bt_bdaddr_t *remote_bd_addr, uint8_t addr_type, bool flush)
{
    bt_status_t ret;

    btc_config_lock();
    ret = _btc_storage_set_remote_addr_type(remote_bd_addr, addr_type, flush);
    btc_config_unlock();

    return ret;
}
