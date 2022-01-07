
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int bt_bdaddr_t ;


 int _btc_storage_compare_address_key_value (int *,int ,void*,int) ;
 int btc_config_lock () ;
 int btc_config_unlock () ;

bool btc_storage_compare_address_key_value(bt_bdaddr_t *remote_bd_addr,
                                                   uint8_t key_type, void *key_value, int key_length)
{
    bool ret;

    btc_config_lock();
    ret = _btc_storage_compare_address_key_value(remote_bd_addr, key_type, key_value, key_length);
    btc_config_unlock();

    return ret;
}
