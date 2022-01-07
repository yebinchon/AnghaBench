
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t next_slot_inq; size_t pending_cl_req; TYPE_2__* cl_cmd_q; } ;
typedef TYPE_1__ tGATT_TCB ;
struct TYPE_5__ {int clcb_idx; int * p_cmd; int op_code; int to_send; } ;
typedef TYPE_2__ tGATT_CMD_Q ;
typedef int UINT8 ;
typedef int UINT16 ;
typedef int BT_HDR ;
typedef int BOOLEAN ;


 size_t GATT_CL_MAX_LCB ;
 int TRUE ;

BOOLEAN gatt_cmd_enq(tGATT_TCB *p_tcb, UINT16 clcb_idx, BOOLEAN to_send, UINT8 op_code, BT_HDR *p_buf)
{
    tGATT_CMD_Q *p_cmd = &p_tcb->cl_cmd_q[p_tcb->next_slot_inq];

    p_cmd->to_send = to_send;
    p_cmd->op_code = op_code;
    p_cmd->p_cmd = p_buf;
    p_cmd->clcb_idx = clcb_idx;

    if (!to_send) {
        p_tcb->pending_cl_req = p_tcb->next_slot_inq;
    }

    p_tcb->next_slot_inq ++;
    p_tcb->next_slot_inq %= GATT_CL_MAX_LCB;

    return TRUE;
}
