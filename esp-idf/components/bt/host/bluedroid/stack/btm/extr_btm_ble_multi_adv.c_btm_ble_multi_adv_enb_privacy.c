
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int raddr_timer_ent; int in_use; } ;
typedef TYPE_1__ tBTM_BLE_MULTI_ADV_INST ;
typedef int UINT8 ;
struct TYPE_5__ {TYPE_1__* p_adv_inst; } ;
typedef scalar_t__ BOOLEAN ;


 int BTM_BleMaxMultiAdvInstanceCount () ;
 int FALSE ;
 int btm_ble_multi_adv_configure_rpa (TYPE_1__*) ;
 TYPE_2__ btm_multi_adv_cb ;
 int btu_stop_timer_oneshot (int *) ;

void btm_ble_multi_adv_enb_privacy(BOOLEAN enable)
{
    UINT8 i;
    tBTM_BLE_MULTI_ADV_INST *p_inst = &btm_multi_adv_cb.p_adv_inst[0];

    for (i = 0; i < BTM_BleMaxMultiAdvInstanceCount() - 1; i ++, p_inst++) {
        p_inst->in_use = FALSE;
        if (enable) {
            btm_ble_multi_adv_configure_rpa (p_inst);
        } else {
            btu_stop_timer_oneshot(&p_inst->raddr_timer_ent);
        }
    }
}
