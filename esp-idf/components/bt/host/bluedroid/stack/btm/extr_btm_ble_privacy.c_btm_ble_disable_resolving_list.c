
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_4__ {int rl_state; } ;
struct TYPE_6__ {TYPE_1__ ble_ctr_cb; } ;
struct TYPE_5__ {scalar_t__ (* get_ble_resolving_list_max_size ) () ;} ;
typedef scalar_t__ BOOLEAN ;


 int BTM_BLE_RL_IDLE ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 scalar_t__ btm_ble_exe_disable_resolving_list () ;
 int btm_ble_resume_resolving_list_activity () ;
 TYPE_3__ btm_cb ;
 TYPE_2__* controller_get_interface () ;
 scalar_t__ stub1 () ;

BOOLEAN btm_ble_disable_resolving_list(UINT8 rl_mask, BOOLEAN to_resume )
{
    UINT8 rl_state = btm_cb.ble_ctr_cb.rl_state;


    if (controller_get_interface()->get_ble_resolving_list_max_size() == 0) {
        return FALSE;
    }

    btm_cb.ble_ctr_cb.rl_state &= ~rl_mask;

    if (rl_state != BTM_BLE_RL_IDLE && btm_cb.ble_ctr_cb.rl_state == BTM_BLE_RL_IDLE) {
        if (btm_ble_exe_disable_resolving_list()) {
            if (to_resume) {
                btm_ble_resume_resolving_list_activity();
            }

            return TRUE;
        } else {
            return FALSE;
        }
    }

    return TRUE;
}
