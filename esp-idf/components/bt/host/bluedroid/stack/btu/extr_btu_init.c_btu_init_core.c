
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SMP_Init () ;
 int btm_ble_init () ;
 int btm_init () ;
 int gatt_init () ;
 int l2c_init () ;
 int sdp_init () ;

void btu_init_core(void)
{

    btm_init();

    l2c_init();
    btm_ble_init();

}
