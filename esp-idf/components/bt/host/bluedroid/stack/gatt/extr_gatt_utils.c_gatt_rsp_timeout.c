
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ operation; scalar_t__ op_subtype; scalar_t__ retry_count; int * p_tcb; } ;
typedef TYPE_1__ tGATT_CLCB ;
typedef int UINT8 ;
struct TYPE_7__ {scalar_t__ param; } ;
typedef TYPE_2__ TIMER_LIST_ENT ;


 scalar_t__ GATTC_OPTYPE_DISCOVERY ;
 scalar_t__ GATT_DISC_SRVC_ALL ;
 scalar_t__ GATT_REQ_RETRY_LIMIT ;
 int GATT_TRACE_ERROR (char*) ;
 int GATT_TRACE_WARNING (char*) ;
 int gatt_act_discovery (TYPE_1__*) ;
 TYPE_1__* gatt_cmd_dequeue (int *,int *) ;
 int gatt_disconnect (int *) ;

void gatt_rsp_timeout(TIMER_LIST_ENT *p_tle)
{
    tGATT_CLCB *p_clcb = (tGATT_CLCB *)p_tle->param;
    if (p_clcb == ((void*)0) || p_clcb->p_tcb == ((void*)0)) {
        GATT_TRACE_WARNING("gatt_rsp_timeout clcb is already deleted");
        return;
    }
    if (p_clcb->operation == GATTC_OPTYPE_DISCOVERY &&
            p_clcb->op_subtype == GATT_DISC_SRVC_ALL &&
            p_clcb->retry_count < GATT_REQ_RETRY_LIMIT) {
        UINT8 rsp_code;
        GATT_TRACE_WARNING("gatt_rsp_timeout retry discovery primary service");
        if (p_clcb != gatt_cmd_dequeue(p_clcb->p_tcb, &rsp_code)) {
            GATT_TRACE_ERROR("gatt_rsp_timeout command queue out of sync, disconnect");
        } else {
            p_clcb->retry_count++;

            gatt_act_discovery(p_clcb);

            return;
        }
    }

    GATT_TRACE_WARNING("gatt_rsp_timeout disconnecting...");
    gatt_disconnect (p_clcb->p_tcb);
}
