
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ adv_mode; } ;
struct TYPE_5__ {int suspended_rl_state; int scan_activity; TYPE_1__ inq_var; } ;
typedef TYPE_2__ tBTM_BLE_CB ;
struct TYPE_6__ {TYPE_2__ ble_ctr_cb; } ;
typedef int BOOLEAN ;


 scalar_t__ BLE_DIR_CONN ;
 scalar_t__ BTM_BLE_ADV_ENABLE ;
 scalar_t__ BTM_BLE_IS_SCAN_ACTIVE (int ) ;
 int BTM_BLE_RL_ADV ;
 int BTM_BLE_RL_IDLE ;
 int BTM_BLE_RL_INIT ;
 int BTM_BLE_RL_SCAN ;
 int BTM_TRACE_ERROR (char*) ;
 int FALSE ;
 int TRUE ;
 scalar_t__ btm_ble_get_conn_st () ;
 int btm_ble_stop_adv () ;
 int btm_ble_stop_scan () ;
 scalar_t__ btm_ble_suspend_bg_conn () ;
 TYPE_3__ btm_cb ;

BOOLEAN btm_ble_suspend_resolving_list_activity(void)
{
    tBTM_BLE_CB *p_ble_cb = &btm_cb.ble_ctr_cb;




    if (p_ble_cb->suspended_rl_state != BTM_BLE_RL_IDLE) {
        return TRUE;
    }


    if (btm_ble_get_conn_st() == BLE_DIR_CONN) {
        BTM_TRACE_ERROR("resolving list can not be edited, EnQ now");
        return FALSE;
    }

    p_ble_cb->suspended_rl_state = BTM_BLE_RL_IDLE;

    if (p_ble_cb->inq_var.adv_mode == BTM_BLE_ADV_ENABLE) {
        btm_ble_stop_adv();
        p_ble_cb->suspended_rl_state |= BTM_BLE_RL_ADV;
    }

    if (BTM_BLE_IS_SCAN_ACTIVE(p_ble_cb->scan_activity)) {
        btm_ble_stop_scan();
        p_ble_cb->suspended_rl_state |= BTM_BLE_RL_SCAN;
    }

    if (btm_ble_suspend_bg_conn()) {
        p_ble_cb->suspended_rl_state |= BTM_BLE_RL_INIT;
    }

    return TRUE;
}
