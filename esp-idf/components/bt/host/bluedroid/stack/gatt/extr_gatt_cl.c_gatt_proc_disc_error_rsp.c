
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tGATT_TCB ;
typedef int tGATT_STATUS ;
typedef int tGATT_CLCB ;
typedef int UINT8 ;
typedef int * UINT16 ;


 int GATT_NOT_FOUND ;




 int GATT_SUCCESS ;
 int GATT_TRACE_DEBUG (char*,...) ;
 int GATT_TRACE_ERROR (char*,int) ;
 int UNUSED (int *) ;
 int gatt_end_operation (int *,int ,int *) ;

void gatt_proc_disc_error_rsp(tGATT_TCB *p_tcb, tGATT_CLCB *p_clcb, UINT8 opcode,
                              UINT16 handle, UINT8 reason)
{
    tGATT_STATUS status = (tGATT_STATUS) reason;

    UNUSED(p_tcb);
    UNUSED(handle);

    GATT_TRACE_DEBUG("gatt_proc_disc_error_rsp reason: %02x cmd_code %04x", reason, opcode);

    switch (opcode) {
    case 129:
    case 130:
    case 128:
    case 131:
        if (reason == GATT_NOT_FOUND) {
            status = GATT_SUCCESS;
            GATT_TRACE_DEBUG("Discovery completed");
        }
        break;
    default:
        GATT_TRACE_ERROR("Incorrect discovery opcode %04x", opcode);
        break;
    }

    gatt_end_operation(p_clcb, status, ((void*)0));
}
