
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tBTM_BLE_REF_VALUE ;
typedef int tBTM_BLE_BATCH_SCAN_STATE ;
typedef int UINT8 ;
struct TYPE_3__ {int* sub_code; size_t next_idx; int * ref_value; int * cur_state; } ;
struct TYPE_4__ {TYPE_1__ op_q; } ;


 int BTM_BLE_BATCH_SCAN_MAX ;
 int BTM_TRACE_DEBUG (char*,int,int ,int ) ;
 TYPE_2__ ble_batchscan_cb ;

void btm_ble_batchscan_enq_op_q(UINT8 opcode, tBTM_BLE_BATCH_SCAN_STATE cur_state,
                                UINT8 cb_evt, tBTM_BLE_REF_VALUE ref_value)
{
    ble_batchscan_cb.op_q.sub_code[ble_batchscan_cb.op_q.next_idx] = (opcode | (cb_evt << 4));
    ble_batchscan_cb.op_q.cur_state[ble_batchscan_cb.op_q.next_idx] = cur_state;
    ble_batchscan_cb.op_q.ref_value[ble_batchscan_cb.op_q.next_idx] = ref_value;
    BTM_TRACE_DEBUG("btm_ble_batchscan_enq_op_q: subcode:%d, Cur_state:%d, ref_value:%d",
                    ble_batchscan_cb.op_q.sub_code[ble_batchscan_cb.op_q.next_idx],
                    ble_batchscan_cb.op_q.cur_state[ble_batchscan_cb.op_q.next_idx],
                    ble_batchscan_cb.op_q.ref_value[ble_batchscan_cb.op_q.next_idx]);
    ble_batchscan_cb.op_q.next_idx = (ble_batchscan_cb.op_q.next_idx + 1)
                                     % BTM_BLE_BATCH_SCAN_MAX;
}
