
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {size_t pending_cl_req; scalar_t__ next_slot_inq; TYPE_2__* cl_cmd_q; } ;
typedef TYPE_1__ tGATT_TCB ;
typedef scalar_t__ tGATT_STATUS ;
struct TYPE_8__ {scalar_t__ op_code; int clcb_idx; int * p_cmd; void* to_send; } ;
typedef TYPE_2__ tGATT_CMD_Q ;
typedef int tGATT_CLCB ;
typedef int UINT8 ;
typedef void* BOOLEAN ;


 void* FALSE ;
 scalar_t__ GATT_CMD_WRITE ;
 scalar_t__ GATT_CONGESTED ;
 scalar_t__ GATT_SIGN_CMD_WRITE ;
 scalar_t__ GATT_SUCCESS ;
 int GATT_TRACE_ERROR (char*) ;
 void* TRUE ;
 scalar_t__ attp_send_msg_to_l2cap (TYPE_1__*,int *) ;
 int * gatt_cmd_dequeue (TYPE_1__*,int *) ;
 int gatt_end_operation (int *,scalar_t__,int *) ;
 int gatt_start_rsp_timer (int ) ;
 int memset (TYPE_2__*,int ,int) ;
 int osi_free (int *) ;

BOOLEAN gatt_cl_send_next_cmd_inq(tGATT_TCB *p_tcb)
{
    tGATT_CMD_Q *p_cmd = &p_tcb->cl_cmd_q[p_tcb->pending_cl_req];
    BOOLEAN sent = FALSE;
    UINT8 rsp_code;
    tGATT_CLCB *p_clcb = ((void*)0);
    tGATT_STATUS att_ret = GATT_SUCCESS;

    while (!sent &&
            p_tcb->pending_cl_req != p_tcb->next_slot_inq &&
            p_cmd->to_send && p_cmd->p_cmd != ((void*)0)) {
        att_ret = attp_send_msg_to_l2cap(p_tcb, p_cmd->p_cmd);

        if (att_ret == GATT_SUCCESS || att_ret == GATT_CONGESTED) {
            sent = TRUE;
            p_cmd->to_send = FALSE;
            if(p_cmd->p_cmd) {
                osi_free(p_cmd->p_cmd);
                p_cmd->p_cmd = ((void*)0);
            }


            if (p_cmd->op_code != GATT_CMD_WRITE && p_cmd->op_code != GATT_SIGN_CMD_WRITE) {
                gatt_start_rsp_timer (p_cmd->clcb_idx);
            } else {
                p_clcb = gatt_cmd_dequeue(p_tcb, &rsp_code);


                if (att_ret == GATT_SUCCESS) {
                    sent = FALSE;
                }

                p_cmd = &p_tcb->cl_cmd_q[p_tcb->pending_cl_req];

                gatt_end_operation(p_clcb, att_ret, ((void*)0));
            }
        } else {
            GATT_TRACE_ERROR("gatt_cl_send_next_cmd_inq: L2CAP sent error");

            memset(p_cmd, 0, sizeof(tGATT_CMD_Q));
            p_tcb->pending_cl_req ++;
            p_cmd = &p_tcb->cl_cmd_q[p_tcb->pending_cl_req];
        }

    }
    return sent;
}
