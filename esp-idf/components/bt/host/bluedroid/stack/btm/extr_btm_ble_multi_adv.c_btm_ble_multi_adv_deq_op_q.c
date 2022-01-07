
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* p_inst_id; size_t pending_idx; int* p_sub_code; } ;
typedef TYPE_1__ tBTM_BLE_MULTI_ADV_OPQ ;
typedef int UINT8 ;
struct TYPE_4__ {TYPE_1__ op_q; } ;


 int BTM_BLE_MULTI_ADV_SUBCODE_MASK ;
 int BTM_BleMaxMultiAdvInstanceCount () ;
 TYPE_2__ btm_multi_adv_cb ;

void btm_ble_multi_adv_deq_op_q(UINT8 *p_opcode, UINT8 *p_inst_id, UINT8 *p_cb_evt)
{
    tBTM_BLE_MULTI_ADV_OPQ *p_op_q = &btm_multi_adv_cb.op_q;

    *p_inst_id = p_op_q->p_inst_id[p_op_q->pending_idx] & 0x7F;
    *p_cb_evt = (p_op_q->p_sub_code[p_op_q->pending_idx] >> 4);
    *p_opcode = (p_op_q->p_sub_code[p_op_q->pending_idx] & BTM_BLE_MULTI_ADV_SUBCODE_MASK);

    p_op_q->pending_idx = (p_op_q->pending_idx + 1) % BTM_BleMaxMultiAdvInstanceCount();
}
