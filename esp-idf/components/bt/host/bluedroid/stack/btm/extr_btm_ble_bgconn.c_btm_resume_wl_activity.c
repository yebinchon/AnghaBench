
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBTM_BLE_WL_STATE ;


 int BTM_BLE_WL_ADV ;
 int btm_ble_resume_bg_conn () ;
 int btm_ble_start_adv () ;

void btm_resume_wl_activity(tBTM_BLE_WL_STATE wl_state)
{
    btm_ble_resume_bg_conn();
    if (wl_state & BTM_BLE_WL_ADV) {
        btm_ble_start_adv();
    }

}
