
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tGATT_TCB ;
typedef int tGATT_STATUS ;
typedef int tGATT_SR_MSG ;
struct TYPE_2__ {int handle; void* reason; void* cmd_code; } ;
typedef TYPE_1__ tGATT_ERROR ;
typedef void* UINT8 ;
typedef int UINT16 ;
typedef int BT_HDR ;
typedef scalar_t__ BOOLEAN ;


 int GATT_INSUF_RESOURCE ;
 int GATT_RSP_ERROR ;
 int * attp_build_sr_msg (int *,int ,int *) ;
 int attp_send_sr_msg (int *,int *) ;
 int gatt_dequeue_sr_cmd (int *) ;

tGATT_STATUS gatt_send_error_rsp (tGATT_TCB *p_tcb, UINT8 err_code, UINT8 op_code,
                                  UINT16 handle, BOOLEAN deq)
{
    tGATT_ERROR error;
    tGATT_STATUS status;
    BT_HDR *p_buf;

    error.cmd_code = op_code;
    error.reason = err_code;
    error.handle = handle;

    if ((p_buf = attp_build_sr_msg(p_tcb, GATT_RSP_ERROR, (tGATT_SR_MSG *)&error)) != ((void*)0)) {
        status = attp_send_sr_msg (p_tcb, p_buf);
    } else {
        status = GATT_INSUF_RESOURCE;
    }

    if (deq) {
        gatt_dequeue_sr_cmd(p_tcb);
    }

    return status;
}
