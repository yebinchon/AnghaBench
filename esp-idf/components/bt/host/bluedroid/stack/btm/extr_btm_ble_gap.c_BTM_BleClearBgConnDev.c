
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int btm_ble_clear_white_list () ;
 int btm_ble_start_auto_conn (int ) ;
 int gatt_reset_bgdev_list () ;

void BTM_BleClearBgConnDev(void)
{
    btm_ble_start_auto_conn(FALSE);
    btm_ble_clear_white_list();
    gatt_reset_bgdev_list();
}
