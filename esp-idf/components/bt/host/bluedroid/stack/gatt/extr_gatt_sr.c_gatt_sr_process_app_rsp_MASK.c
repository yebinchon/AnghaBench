#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ status; int /*<<< orphan*/  handle; int /*<<< orphan*/ * p_rsp_msg; } ;
struct TYPE_12__ {TYPE_2__ sr_cmd; int /*<<< orphan*/  payload_size; } ;
typedef  TYPE_1__ tGATT_TCB ;
typedef  scalar_t__ tGATT_STATUS ;
typedef  int /*<<< orphan*/  tGATT_SR_MSG ;
typedef  scalar_t__ tGATT_IF ;
typedef  int /*<<< orphan*/  tGATTS_RSP ;
typedef  scalar_t__ UINT8 ;
typedef  int /*<<< orphan*/  UINT32 ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ GATT_REQ_EXEC_WRITE ; 
 scalar_t__ GATT_REQ_PREPARE_WRITE ; 
 scalar_t__ GATT_REQ_READ_MULTI ; 
 scalar_t__ GATT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ GATT_UNKNOWN_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

tGATT_STATUS FUNC12 (tGATT_TCB *p_tcb, tGATT_IF gatt_if,
                                      UINT32 trans_id, UINT8 op_code,
                                      tGATT_STATUS status, tGATTS_RSP *p_msg)
{
    tGATT_STATUS    ret_code = GATT_SUCCESS;
    FUNC2(trans_id);

    FUNC0("gatt_sr_process_app_rsp gatt_if=%d\n", gatt_if);

    FUNC9(p_tcb, gatt_if, FALSE, FALSE);

    if (op_code == GATT_REQ_READ_MULTI) {
        /* If no error and still waiting, just return */
        if (!FUNC11 (&p_tcb->sr_cmd, status, p_msg, p_tcb->payload_size)) {
            return (GATT_SUCCESS);
        }
    } else {
        if (op_code == GATT_REQ_PREPARE_WRITE && status == GATT_SUCCESS) {
            FUNC10(p_tcb, gatt_if, TRUE, FALSE);
        }

        if (op_code == GATT_REQ_EXEC_WRITE && status != GATT_SUCCESS) {
            FUNC8(p_tcb);
        }

        p_tcb->sr_cmd.status = status;

        if (FUNC7(p_tcb)
                && status == GATT_SUCCESS) {
            if (p_tcb->sr_cmd.p_rsp_msg == NULL) {
                p_tcb->sr_cmd.p_rsp_msg = FUNC3 (p_tcb, (UINT8)(op_code + 1), (tGATT_SR_MSG *)p_msg);
            } else {
                FUNC1("Exception!!! already has respond message\n");
            }
        }
    }
    if (FUNC7(p_tcb)) {
        if ( (p_tcb->sr_cmd.status == GATT_SUCCESS) && (p_tcb->sr_cmd.p_rsp_msg) ) {
            ret_code = FUNC4 (p_tcb, p_tcb->sr_cmd.p_rsp_msg);
            p_tcb->sr_cmd.p_rsp_msg = NULL;
        } else {
            if (p_tcb->sr_cmd.status == GATT_SUCCESS){
                status = GATT_UNKNOWN_ERROR;
            }
            ret_code = FUNC6 (p_tcb, status, op_code, p_tcb->sr_cmd.handle, FALSE);
        }

        FUNC5(p_tcb);
    }

    FUNC0("gatt_sr_process_app_rsp ret_code=%d\n", ret_code);

    return ret_code;
}