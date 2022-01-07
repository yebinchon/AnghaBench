
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ handle; scalar_t__ len; scalar_t__ value; scalar_t__ offset; } ;
typedef TYPE_1__ tGATT_VALUE ;
typedef int tGATT_TCB ;
typedef int tGATT_EXEC_FLAG ;
struct TYPE_7__ {scalar_t__ counter; int status; scalar_t__ p_attr_buf; } ;
typedef TYPE_2__ tGATT_CLCB ;
typedef scalar_t__ BOOLEAN ;


 scalar_t__ FALSE ;
 int GATT_ERROR ;
 int GATT_PREP_WRITE_CANCEL ;
 int GATT_PREP_WRITE_EXEC ;
 int GATT_SUCCESS ;
 int GATT_TRACE_DEBUG (char*) ;
 scalar_t__ TRUE ;
 int gatt_send_queue_write_cancel (int *,TYPE_2__*,int ) ;
 scalar_t__ memcmp (scalar_t__,scalar_t__,scalar_t__) ;

BOOLEAN gatt_check_write_long_terminate(tGATT_TCB *p_tcb, tGATT_CLCB *p_clcb, tGATT_VALUE *p_rsp_value)
{
    tGATT_VALUE *p_attr = (tGATT_VALUE *)p_clcb->p_attr_buf;
    BOOLEAN exec = FALSE;
    tGATT_EXEC_FLAG flag = GATT_PREP_WRITE_EXEC;

    GATT_TRACE_DEBUG("gatt_check_write_long_terminate ");

    if (p_rsp_value != ((void*)0)) {
        if (p_rsp_value->handle != p_attr->handle ||
                p_rsp_value->len != p_clcb->counter ||
                memcmp(p_rsp_value->value, p_attr->value + p_attr->offset, p_rsp_value->len)) {

            p_clcb->status = GATT_ERROR;
            flag = GATT_PREP_WRITE_CANCEL;
            exec = TRUE;
        } else {
            p_clcb->status = GATT_SUCCESS;

            if ((p_attr->offset += p_rsp_value->len) >= p_attr->len) {
                exec = TRUE;
            }
        }
    }
    if (exec) {
        gatt_send_queue_write_cancel (p_tcb, p_clcb, flag);
        return TRUE;
    }
    return FALSE;
}
