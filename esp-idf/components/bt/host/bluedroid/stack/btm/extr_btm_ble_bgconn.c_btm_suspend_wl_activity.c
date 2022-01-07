
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBTM_BLE_WL_STATE ;


 int BTM_BLE_WL_ADV ;
 int BTM_BLE_WL_INIT ;
 int BTM_BLE_WL_SCAN ;
 int FALSE ;
 int btm_ble_start_auto_conn (int ) ;
 int btm_ble_start_select_conn (int ,int *) ;
 int btm_ble_stop_adv () ;

__attribute__((used)) static void btm_suspend_wl_activity(tBTM_BLE_WL_STATE wl_state)
{
    if (wl_state & BTM_BLE_WL_INIT) {
        btm_ble_start_auto_conn(FALSE);
    }
    if (wl_state & BTM_BLE_WL_SCAN) {
        btm_ble_start_select_conn(FALSE, ((void*)0));
    }
    if (wl_state & BTM_BLE_WL_ADV) {
        btm_ble_stop_adv();
    }

}
