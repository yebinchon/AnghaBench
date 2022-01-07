
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ len; int value; int offset; int handle; int member_0; } ;
typedef TYPE_1__ tGATT_VALUE ;
typedef int tGATT_TCB ;
struct TYPE_10__ {scalar_t__ op_subtype; int status; } ;
typedef TYPE_2__ tGATT_CLCB ;
typedef int UINT8 ;
typedef scalar_t__ UINT16 ;


 int GATT_INVALID_PDU ;
 scalar_t__ GATT_PREP_WRITE_RSP_MIN_LEN ;
 int GATT_SUCCESS ;
 int GATT_TRACE_DEBUG (char*,int ,scalar_t__) ;
 int GATT_TRACE_ERROR (char*) ;
 scalar_t__ GATT_WRITE ;
 scalar_t__ GATT_WRITE_PREPARE ;
 int STREAM_TO_UINT16 (int ,int *) ;
 int gatt_check_write_long_terminate (int *,TYPE_2__*,TYPE_1__*) ;
 int gatt_dbg_op_name (int ) ;
 int gatt_end_operation (TYPE_2__*,int ,TYPE_1__*) ;
 int gatt_send_prepare_write (int *,TYPE_2__*) ;
 int memcpy (int ,int *,scalar_t__) ;

void gatt_process_prep_write_rsp (tGATT_TCB *p_tcb, tGATT_CLCB *p_clcb, UINT8 op_code,
                                  UINT16 len, UINT8 *p_data)
{
    tGATT_VALUE value = {0};
    UINT8 *p = p_data;

    GATT_TRACE_DEBUG("value resp op_code = %s len = %d", gatt_dbg_op_name(op_code), len);

    if (len < GATT_PREP_WRITE_RSP_MIN_LEN) {
        GATT_TRACE_ERROR("illegal prepare write response length, discard");
        gatt_end_operation(p_clcb, GATT_INVALID_PDU, &value);
        return;
    }

    STREAM_TO_UINT16 (value.handle, p);
    STREAM_TO_UINT16 (value.offset, p);

    value.len = len - 4;

    memcpy (value.value, p, value.len);

    if (p_clcb->op_subtype == GATT_WRITE_PREPARE) {
        p_clcb->status = GATT_SUCCESS;



        gatt_end_operation(p_clcb, p_clcb->status, &value);
    } else if (p_clcb->op_subtype == GATT_WRITE ) {
        if (!gatt_check_write_long_terminate(p_tcb, p_clcb, &value)) {
            gatt_send_prepare_write(p_tcb, p_clcb);
        }
    }

}
