
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ payload_size; } ;
typedef TYPE_1__ tGATT_TCB ;
typedef int tGATT_STATUS ;
typedef int tGATT_CLCB ;
typedef int UINT8 ;
typedef scalar_t__ UINT16 ;


 scalar_t__ GATT_DEF_BLE_MTU_SIZE ;
 int GATT_INVALID_PDU ;
 scalar_t__ GATT_MTU_RSP_MIN_LEN ;
 int GATT_SUCCESS ;
 int GATT_TRACE_ERROR (char*) ;
 int STREAM_TO_UINT16 (scalar_t__,int *) ;
 int gatt_end_operation (int *,int ,int *) ;

void gatt_process_mtu_rsp(tGATT_TCB *p_tcb, tGATT_CLCB *p_clcb, UINT16 len, UINT8 *p_data)
{
    UINT16 mtu;
    tGATT_STATUS status = GATT_SUCCESS;

    if (len < GATT_MTU_RSP_MIN_LEN) {
        GATT_TRACE_ERROR("invalid MTU response PDU received, discard.");
        status = GATT_INVALID_PDU;
    } else {
        STREAM_TO_UINT16(mtu, p_data);

        if (mtu < p_tcb->payload_size && mtu >= GATT_DEF_BLE_MTU_SIZE) {
            p_tcb->payload_size = mtu;
        }
    }




    gatt_end_operation(p_clcb, status, ((void*)0));
}
