
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* p_inst_id; size_t next_idx; int* p_sub_code; } ;
typedef TYPE_1__ tBTM_BLE_MULTI_ADV_OPQ ;
typedef int UINT8 ;
struct TYPE_4__ {TYPE_1__ op_q; } ;


 int BTM_BleMaxMultiAdvInstanceCount () ;
 TYPE_2__ btm_multi_adv_cb ;

void btm_ble_multi_adv_enq_op_q(UINT8 opcode, UINT8 inst_id, UINT8 cb_evt)
{
    tBTM_BLE_MULTI_ADV_OPQ *p_op_q = &btm_multi_adv_cb.op_q;

    p_op_q->p_inst_id[p_op_q->next_idx] = inst_id;

    p_op_q->p_sub_code[p_op_q->next_idx] = (opcode | (cb_evt << 4));

    p_op_q->next_idx = (p_op_q->next_idx + 1) % BTM_BleMaxMultiAdvInstanceCount();
}
