
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int btc_config_section_iter_t ;
typedef int bt_status_t ;
typedef int bt_bdaddr_t ;


 int BTC_STORAGE_LINK_KEY_STR ;
 int BTC_STORAGE_LINK_KEY_TYPE_STR ;
 int BTC_STORAGE_PIN_LENGTH_STR ;
 int BT_STATUS_SUCCESS ;
 scalar_t__ btc_config_exist (char const*,int ) ;
 int btc_config_lock () ;
 int * btc_config_section_begin () ;
 int const* btc_config_section_end () ;
 char* btc_config_section_name (int const*) ;
 int * btc_config_section_next (int const*) ;
 int btc_config_unlock () ;
 int memcpy (int *,int *,int) ;
 scalar_t__ string_is_bdaddr (char const*) ;
 int string_to_bdaddr (char const*,int *) ;

bt_status_t btc_storage_get_bonded_bt_devices_list(bt_bdaddr_t *bond_dev, int dev_num)
{
    bt_bdaddr_t bd_addr;

    btc_config_lock();
    for (const btc_config_section_iter_t *iter = btc_config_section_begin(); iter != btc_config_section_end();
            iter = btc_config_section_next(iter)) {

        if (dev_num-- <= 0) {
            break;
        }

        const char *name = btc_config_section_name(iter);

        if (string_is_bdaddr(name) &&
            btc_config_exist(name, BTC_STORAGE_LINK_KEY_TYPE_STR) &&
            btc_config_exist(name, BTC_STORAGE_PIN_LENGTH_STR) &&
            btc_config_exist(name, BTC_STORAGE_LINK_KEY_STR)) {
            string_to_bdaddr(name, &bd_addr);
            memcpy(bond_dev, &bd_addr, sizeof(bt_bdaddr_t));
            bond_dev++;
        }
    }
    btc_config_unlock();

    return BT_STATUS_SUCCESS;
}
