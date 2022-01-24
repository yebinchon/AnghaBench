#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {size_t pending_cl_req; scalar_t__ next_slot_inq; TYPE_2__* cl_cmd_q; } ;
typedef  TYPE_1__ tGATT_TCB ;
typedef  scalar_t__ tGATT_STATUS ;
struct TYPE_8__ {scalar_t__ op_code; int /*<<< orphan*/  clcb_idx; int /*<<< orphan*/ * p_cmd; void* to_send; } ;
typedef  TYPE_2__ tGATT_CMD_Q ;
typedef  int /*<<< orphan*/  tGATT_CLCB ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  void* BOOLEAN ;

/* Variables and functions */
 void* FALSE ; 
 scalar_t__ GATT_CMD_WRITE ; 
 scalar_t__ GATT_CONGESTED ; 
 scalar_t__ GATT_SIGN_CMD_WRITE ; 
 scalar_t__ GATT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* TRUE ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

BOOLEAN FUNC7(tGATT_TCB *p_tcb)
{
    tGATT_CMD_Q  *p_cmd = &p_tcb->cl_cmd_q[p_tcb->pending_cl_req];
    BOOLEAN     sent = FALSE;
    UINT8       rsp_code;
    tGATT_CLCB   *p_clcb = NULL;
    tGATT_STATUS att_ret = GATT_SUCCESS;

    while (!sent &&
            p_tcb->pending_cl_req != p_tcb->next_slot_inq &&
            p_cmd->to_send && p_cmd->p_cmd != NULL) {
        att_ret = FUNC1(p_tcb, p_cmd->p_cmd);

        if (att_ret == GATT_SUCCESS || att_ret == GATT_CONGESTED) {
            sent = TRUE;
            p_cmd->to_send = FALSE;
            if(p_cmd->p_cmd) {
                FUNC6(p_cmd->p_cmd);
                p_cmd->p_cmd = NULL;
            }

            /* dequeue the request if is write command or sign write */
            if (p_cmd->op_code != GATT_CMD_WRITE && p_cmd->op_code != GATT_SIGN_CMD_WRITE) {
                FUNC4 (p_cmd->clcb_idx);
            } else {
                p_clcb = FUNC2(p_tcb, &rsp_code);

                /* if no ack needed, keep sending */
                if (att_ret == GATT_SUCCESS) {
                    sent = FALSE;
                }

                p_cmd = &p_tcb->cl_cmd_q[p_tcb->pending_cl_req];
                /* send command complete callback here */
                FUNC3(p_clcb, att_ret, NULL);
            }
        } else {
            FUNC0("gatt_cl_send_next_cmd_inq: L2CAP sent error");

            FUNC5(p_cmd, 0, sizeof(tGATT_CMD_Q));
            p_tcb->pending_cl_req ++;
            p_cmd = &p_tcb->cl_cmd_q[p_tcb->pending_cl_req];
        }

    }
    return sent;
}