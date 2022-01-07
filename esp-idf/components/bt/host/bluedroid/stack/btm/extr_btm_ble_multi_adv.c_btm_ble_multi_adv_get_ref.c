
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* p_ref; } ;
typedef TYPE_1__ tBTM_BLE_MULTI_ADV_INST ;
typedef int UINT8 ;
struct TYPE_4__ {TYPE_1__* p_adv_inst; } ;


 int BTM_BleMaxMultiAdvInstanceCount () ;
 TYPE_2__ btm_multi_adv_cb ;

void *btm_ble_multi_adv_get_ref(UINT8 inst_id)
{
    tBTM_BLE_MULTI_ADV_INST *p_inst = ((void*)0);

    if (inst_id < BTM_BleMaxMultiAdvInstanceCount()) {
        p_inst = &btm_multi_adv_cb.p_adv_inst[inst_id - 1];
        if (((void*)0) != p_inst) {
            return p_inst->p_ref;
        }
    }

    return ((void*)0);
}
