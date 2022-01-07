
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SMP_Free () ;
 int btm_ble_free () ;
 int btm_free () ;
 int gatt_free () ;
 int l2c_free () ;
 int sdp_deinit () ;

void btu_free_core(void)
{

    l2c_free();
    SMP_Free();

    btm_ble_free();

    btm_free();
}
