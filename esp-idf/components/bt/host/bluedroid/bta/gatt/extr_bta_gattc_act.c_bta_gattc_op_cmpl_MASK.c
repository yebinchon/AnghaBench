#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {int /*<<< orphan*/  status; int /*<<< orphan*/  op_code; } ;
struct TYPE_20__ {TYPE_7__ op_cmpl; } ;
typedef  TYPE_4__ tBTA_GATTC_DATA ;
struct TYPE_21__ {scalar_t__ auto_update; TYPE_3__* p_srcb; TYPE_2__* p_q_cmd; } ;
typedef  TYPE_5__ tBTA_GATTC_CLCB ;
typedef  size_t UINT8 ;
struct TYPE_19__ {scalar_t__ srvc_hdl_chg; } ;
struct TYPE_17__ {size_t event; } ;
struct TYPE_18__ {TYPE_1__ hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 size_t BTA_GATTC_API_READ_EVT ; 
 size_t BTA_GATTC_API_READ_MULTI_EVT ; 
 scalar_t__ BTA_GATTC_DISC_WAITING ; 
 int /*<<< orphan*/  BTA_GATTC_INT_DISCOVER_EVT ; 
 scalar_t__ BTA_GATTC_REQ_WAITING ; 
 size_t GATTC_OPTYPE_CONFIG ; 
 size_t GATTC_OPTYPE_EXE_WRITE ; 
 size_t GATTC_OPTYPE_INDICATION ; 
 size_t GATTC_OPTYPE_NOTIFICATION ; 
 size_t GATTC_OPTYPE_READ ; 
 size_t GATTC_OPTYPE_WRITE ; 
 int /*<<< orphan*/  GATT_ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,TYPE_7__*) ; 
 size_t* bta_gattc_op_code_name ; 
 size_t* bta_gattc_opcode_to_int_evt ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,TYPE_7__*) ; 

void  FUNC7(tBTA_GATTC_CLCB *p_clcb, tBTA_GATTC_DATA *p_data)
{
    UINT8           op = (UINT8)p_data->op_cmpl.op_code;
    UINT8           mapped_op = 0;

    FUNC0("bta_gattc_op_cmpl op = %d", op);

    if (op == GATTC_OPTYPE_INDICATION || op == GATTC_OPTYPE_NOTIFICATION) {
        FUNC1("unexpected operation, ignored");
    } else if (op >= GATTC_OPTYPE_READ) {
        if (p_clcb->p_q_cmd == NULL) {
            FUNC1("No pending command");
            return;
        }
        if (p_clcb->p_q_cmd->hdr.event != bta_gattc_opcode_to_int_evt[op - GATTC_OPTYPE_READ]) {
            if (p_clcb->p_q_cmd->hdr.event != BTA_GATTC_API_READ_MULTI_EVT) {
                mapped_op = p_clcb->p_q_cmd->hdr.event - BTA_GATTC_API_READ_EVT + GATTC_OPTYPE_READ;
                if ( mapped_op > GATTC_OPTYPE_INDICATION) {
                    mapped_op = 0;
                }

#if (BT_TRACE_VERBOSE == TRUE)
                FUNC1("expect op:(%s :0x%04x), receive unexpected operation (%s).",
                                 bta_gattc_op_code_name[mapped_op] , p_clcb->p_q_cmd->hdr.event,
                                 bta_gattc_op_code_name[op]);
#else
                APPL_TRACE_ERROR("expect op:(%u :0x%04x), receive unexpected operation (%u).",
                                 mapped_op , p_clcb->p_q_cmd->hdr.event, op);
#endif
                return;
            }
        }

        /* discard responses if service change indication is received before operation completed */
        if (p_clcb->auto_update == BTA_GATTC_DISC_WAITING && p_clcb->p_srcb->srvc_hdl_chg) {
            FUNC0("Discard all responses when service change indication is received.");
            p_data->op_cmpl.status = GATT_ERROR;
        }

        /* service handle change void the response, discard it */
        if (op == GATTC_OPTYPE_READ) {
            FUNC4(p_clcb, &p_data->op_cmpl);
        }

        else if (op == GATTC_OPTYPE_WRITE) {
            FUNC6(p_clcb, &p_data->op_cmpl);
        }

        else if (op == GATTC_OPTYPE_EXE_WRITE) {
            FUNC3(p_clcb, &p_data->op_cmpl);
        }

        else if (op == GATTC_OPTYPE_CONFIG) {
            FUNC2(p_clcb, &p_data->op_cmpl);
        }

        if (p_clcb->auto_update == BTA_GATTC_DISC_WAITING) {
            p_clcb->auto_update = BTA_GATTC_REQ_WAITING;
            FUNC5(p_clcb, BTA_GATTC_INT_DISCOVER_EVT, NULL);
        }
    }
}