
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _btc_storage_save () ;
 int btc_config_lock () ;
 int btc_config_unlock () ;

void btc_storage_save(void)
{
    btc_config_lock();
    _btc_storage_save();
    btc_config_unlock();
}
