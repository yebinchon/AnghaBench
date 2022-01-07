
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_22__ {int status; int op_code; } ;
struct TYPE_20__ {TYPE_7__ op_cmpl; } ;
typedef TYPE_4__ tBTA_GATTC_DATA ;
struct TYPE_21__ {scalar_t__ auto_update; TYPE_3__* p_srcb; TYPE_2__* p_q_cmd; } ;
typedef TYPE_5__ tBTA_GATTC_CLCB ;
typedef size_t UINT8 ;
struct TYPE_19__ {scalar_t__ srvc_hdl_chg; } ;
struct TYPE_17__ {size_t event; } ;
struct TYPE_18__ {TYPE_1__ hdr; } ;


 int APPL_TRACE_DEBUG (char*,...) ;
 int APPL_TRACE_ERROR (char*,...) ;
 size_t BTA_GATTC_API_READ_EVT ;
 size_t BTA_GATTC_API_READ_MULTI_EVT ;
 scalar_t__ BTA_GATTC_DISC_WAITING ;
 int BTA_GATTC_INT_DISCOVER_EVT ;
 scalar_t__ BTA_GATTC_REQ_WAITING ;
 size_t GATTC_OPTYPE_CONFIG ;
 size_t GATTC_OPTYPE_EXE_WRITE ;
 size_t GATTC_OPTYPE_INDICATION ;
 size_t GATTC_OPTYPE_NOTIFICATION ;
 size_t GATTC_OPTYPE_READ ;
 size_t GATTC_OPTYPE_WRITE ;
 int GATT_ERROR ;
 int bta_gattc_cfg_mtu_cmpl (TYPE_5__*,TYPE_7__*) ;
 int bta_gattc_exec_cmpl (TYPE_5__*,TYPE_7__*) ;
 size_t* bta_gattc_op_code_name ;
 size_t* bta_gattc_opcode_to_int_evt ;
 int bta_gattc_read_cmpl (TYPE_5__*,TYPE_7__*) ;
 int bta_gattc_sm_execute (TYPE_5__*,int ,int *) ;
 int bta_gattc_write_cmpl (TYPE_5__*,TYPE_7__*) ;

void bta_gattc_op_cmpl(tBTA_GATTC_CLCB *p_clcb, tBTA_GATTC_DATA *p_data)
{
    UINT8 op = (UINT8)p_data->op_cmpl.op_code;
    UINT8 mapped_op = 0;

    APPL_TRACE_DEBUG("bta_gattc_op_cmpl op = %d", op);

    if (op == GATTC_OPTYPE_INDICATION || op == GATTC_OPTYPE_NOTIFICATION) {
        APPL_TRACE_ERROR("unexpected operation, ignored");
    } else if (op >= GATTC_OPTYPE_READ) {
        if (p_clcb->p_q_cmd == ((void*)0)) {
            APPL_TRACE_ERROR("No pending command");
            return;
        }
        if (p_clcb->p_q_cmd->hdr.event != bta_gattc_opcode_to_int_evt[op - GATTC_OPTYPE_READ]) {
            if (p_clcb->p_q_cmd->hdr.event != BTA_GATTC_API_READ_MULTI_EVT) {
                mapped_op = p_clcb->p_q_cmd->hdr.event - BTA_GATTC_API_READ_EVT + GATTC_OPTYPE_READ;
                if ( mapped_op > GATTC_OPTYPE_INDICATION) {
                    mapped_op = 0;
                }


                APPL_TRACE_ERROR("expect op:(%s :0x%04x), receive unexpected operation (%s).",
                                 bta_gattc_op_code_name[mapped_op] , p_clcb->p_q_cmd->hdr.event,
                                 bta_gattc_op_code_name[op]);




                return;
            }
        }


        if (p_clcb->auto_update == BTA_GATTC_DISC_WAITING && p_clcb->p_srcb->srvc_hdl_chg) {
            APPL_TRACE_DEBUG("Discard all responses when service change indication is received.");
            p_data->op_cmpl.status = GATT_ERROR;
        }


        if (op == GATTC_OPTYPE_READ) {
            bta_gattc_read_cmpl(p_clcb, &p_data->op_cmpl);
        }

        else if (op == GATTC_OPTYPE_WRITE) {
            bta_gattc_write_cmpl(p_clcb, &p_data->op_cmpl);
        }

        else if (op == GATTC_OPTYPE_EXE_WRITE) {
            bta_gattc_exec_cmpl(p_clcb, &p_data->op_cmpl);
        }

        else if (op == GATTC_OPTYPE_CONFIG) {
            bta_gattc_cfg_mtu_cmpl(p_clcb, &p_data->op_cmpl);
        }

        if (p_clcb->auto_update == BTA_GATTC_DISC_WAITING) {
            p_clcb->auto_update = BTA_GATTC_REQ_WAITING;
            bta_gattc_sm_execute(p_clcb, BTA_GATTC_INT_DISCOVER_EVT, ((void*)0));
        }
    }
}
