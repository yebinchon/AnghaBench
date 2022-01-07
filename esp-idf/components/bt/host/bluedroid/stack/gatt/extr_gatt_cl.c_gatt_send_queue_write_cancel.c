
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tGATT_TCB ;
typedef int tGATT_EXEC_FLAG ;
typedef int tGATT_CL_MSG ;
struct TYPE_4__ {int clcb_idx; } ;
typedef TYPE_1__ tGATT_CLCB ;
typedef scalar_t__ UINT8 ;


 int GATT_REQ_EXEC_WRITE ;
 scalar_t__ GATT_SUCCESS ;
 int GATT_TRACE_DEBUG (char*) ;
 scalar_t__ attp_send_cl_msg (int *,int ,int ,int *) ;
 int gatt_end_operation (TYPE_1__*,scalar_t__,int *) ;

void gatt_send_queue_write_cancel (tGATT_TCB *p_tcb, tGATT_CLCB *p_clcb, tGATT_EXEC_FLAG flag)
{
    UINT8 rt ;

    GATT_TRACE_DEBUG("gatt_send_queue_write_cancel ");

    rt = attp_send_cl_msg(p_tcb, p_clcb->clcb_idx, GATT_REQ_EXEC_WRITE, (tGATT_CL_MSG *)&flag);

    if (rt != GATT_SUCCESS) {
        gatt_end_operation(p_clcb, rt, ((void*)0));
    }
}
