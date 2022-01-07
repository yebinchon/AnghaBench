
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int index; } ;
typedef TYPE_1__ tBTM_BLE_MULTI_ADV_INST ;
struct TYPE_5__ {int front; int rear; int * inst_index_queue; } ;


 int BTM_BLE_MULTI_ADV_MAX ;
 int BTM_TRACE_ERROR (char*) ;
 scalar_t__ btm_ble_multi_adv_gen_rpa_cmpl ;
 int btm_gen_resolvable_private_addr (void*) ;
 TYPE_2__ btm_multi_adv_idx_q ;

void btm_ble_multi_adv_configure_rpa (tBTM_BLE_MULTI_ADV_INST *p_inst)
{
    if (btm_multi_adv_idx_q.front == (btm_multi_adv_idx_q.rear + 1) % BTM_BLE_MULTI_ADV_MAX) {
        BTM_TRACE_ERROR("outstanding rand generation exceeded max allowed ");
        return;
    } else {
        if (btm_multi_adv_idx_q.front == -1) {
            btm_multi_adv_idx_q.front = 0;
            btm_multi_adv_idx_q.rear = 0;
        } else {
            btm_multi_adv_idx_q.rear = (btm_multi_adv_idx_q.rear + 1) % BTM_BLE_MULTI_ADV_MAX;
        }
        btm_multi_adv_idx_q.inst_index_queue[btm_multi_adv_idx_q.rear] = p_inst->index;
    }
    btm_gen_resolvable_private_addr((void *)btm_ble_multi_adv_gen_rpa_cmpl);
}
