
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int btc_config_section_iter_t ;


 int BTC_STORAGE_LINK_KEY_STR ;
 int BTC_STORAGE_LINK_KEY_TYPE_STR ;
 int BTC_STORAGE_PIN_LENGTH_STR ;
 scalar_t__ btc_config_exist (char const*,int ) ;
 int btc_config_lock () ;
 int * btc_config_section_begin () ;
 int const* btc_config_section_end () ;
 char* btc_config_section_name (int const*) ;
 int * btc_config_section_next (int const*) ;
 int btc_config_unlock () ;
 scalar_t__ string_is_bdaddr (char const*) ;

int btc_storage_get_num_bt_bond_devices(void)
{
    int num_dev = 0;

    btc_config_lock();
    for (const btc_config_section_iter_t *iter = btc_config_section_begin(); iter != btc_config_section_end();
            iter = btc_config_section_next(iter)) {
        const char *name = btc_config_section_name(iter);
        if (string_is_bdaddr(name) &&
            btc_config_exist(name, BTC_STORAGE_LINK_KEY_TYPE_STR) &&
            btc_config_exist(name, BTC_STORAGE_PIN_LENGTH_STR) &&
            btc_config_exist(name, BTC_STORAGE_LINK_KEY_STR)) {
            num_dev++;
        }
    }
    btc_config_unlock();

    return num_dev;
}
