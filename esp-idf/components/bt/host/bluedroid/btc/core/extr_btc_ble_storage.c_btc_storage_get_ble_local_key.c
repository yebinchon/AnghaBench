
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int bt_status_t ;


 int _btc_storage_get_ble_local_key (int ,char*,int) ;
 int btc_config_lock () ;
 int btc_config_unlock () ;

bt_status_t btc_storage_get_ble_local_key(uint8_t key_type,
                                          char *key_value,
                                          int key_length)
{
    bt_status_t ret;

    btc_config_lock();
    ret = _btc_storage_get_ble_local_key(key_type, key_value, key_length);
    btc_config_unlock();

    return ret;
}
