
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int btc_config_section_iter_t ;


 int BTC_BLE_STORAGE_DEV_TYPE_STR ;
 int BT_DEVICE_TYPE_BLE ;
 int btc_config_get_int (char const*,int ,int*) ;
 int btc_config_lock () ;
 int * btc_config_section_begin () ;
 int const* btc_config_section_end () ;
 char* btc_config_section_name (int const*) ;
 int * btc_config_section_next (int const*) ;
 int btc_config_unlock () ;
 int string_is_bdaddr (char const*) ;

int btc_storage_get_num_ble_bond_devices(void)
{
    int num_dev = 0;
    uint32_t device_type = 0;

    btc_config_lock();
    for (const btc_config_section_iter_t *iter = btc_config_section_begin(); iter != btc_config_section_end();
            iter = btc_config_section_next(iter)) {
        const char *name = btc_config_section_name(iter);
        if (!string_is_bdaddr(name) ||
                !btc_config_get_int(name, BTC_BLE_STORAGE_DEV_TYPE_STR, (int *)&device_type) ||
                !(device_type & BT_DEVICE_TYPE_BLE)) {
            continue;
        }

        num_dev++;
    }
    btc_config_unlock();

    return num_dev;
}
