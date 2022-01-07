
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int btc_config_init () ;
 int btc_dm_load_ble_local_keys () ;
 int btc_init_callback ;
 int bte_main_boot_entry (int ) ;
 int osi_alarm_create_mux () ;
 int osi_alarm_init () ;

__attribute__((used)) static void btc_init_bluetooth(void)
{
    osi_alarm_create_mux();
    osi_alarm_init();
    bte_main_boot_entry(btc_init_callback);
}
