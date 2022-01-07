
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int suspended_rl_state; } ;
typedef TYPE_1__ tBTM_BLE_CB ;
struct TYPE_4__ {TYPE_1__ ble_ctr_cb; } ;


 int BTM_BLE_RL_ADV ;
 int BTM_BLE_RL_IDLE ;
 int BTM_BLE_RL_INIT ;
 int BTM_BLE_RL_SCAN ;
 int btm_ble_resume_bg_conn () ;
 int btm_ble_start_adv () ;
 int btm_ble_start_scan () ;
 TYPE_2__ btm_cb ;

void btm_ble_resume_resolving_list_activity(void)
{
    tBTM_BLE_CB *p_ble_cb = &btm_cb.ble_ctr_cb;

    if (p_ble_cb->suspended_rl_state & BTM_BLE_RL_ADV) {
        btm_ble_start_adv();
    }

    if (p_ble_cb->suspended_rl_state & BTM_BLE_RL_SCAN) {
        btm_ble_start_scan();
    }

    if (p_ble_cb->suspended_rl_state & BTM_BLE_RL_INIT) {
        btm_ble_resume_bg_conn();
    }

    p_ble_cb->suspended_rl_state = BTM_BLE_RL_IDLE;
}
