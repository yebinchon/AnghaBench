
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int payload_size; int transport; int peer_bda; } ;
typedef TYPE_1__ tGATT_TCB ;
typedef scalar_t__ tGATT_STATUS ;
struct TYPE_13__ {int p_db; } ;
typedef TYPE_2__ tGATT_SR_REG ;
typedef scalar_t__ UINT8 ;
typedef int UINT16 ;
struct TYPE_14__ {int len; } ;
typedef TYPE_3__ BT_HDR ;


 int FALSE ;
 scalar_t__ GATT_BUSY ;
 scalar_t__ GATT_NO_RESOURCES ;
 scalar_t__ GATT_PENDING ;
 scalar_t__ GATT_REQ_READ_BLOB ;
 scalar_t__ GATT_STACK_RSP ;
 scalar_t__ GATT_SUCCESS ;
 int GATT_TRACE_ERROR (char*) ;
 int L2CAP_MIN_OFFSET ;
 int STREAM_TO_UINT16 (int,scalar_t__*) ;
 int UNUSED (int) ;
 int attp_send_sr_msg (TYPE_1__*,TYPE_3__*) ;
 int gatt_dequeue_sr_cmd (TYPE_1__*) ;
 int gatt_send_error_rsp (TYPE_1__*,scalar_t__,scalar_t__,int,int ) ;
 int gatt_sr_get_sec_info (int ,int ,scalar_t__*,scalar_t__*) ;
 scalar_t__ gatts_read_attr_value_by_handle (TYPE_1__*,int ,scalar_t__,int,int,scalar_t__*,int*,int,scalar_t__,scalar_t__,int ) ;
 scalar_t__ osi_calloc (int) ;
 int osi_free (TYPE_3__*) ;

__attribute__((used)) static void gatts_process_read_req(tGATT_TCB *p_tcb, tGATT_SR_REG *p_rcb, UINT8 op_code,
                                   UINT16 handle, UINT16 len, UINT8 *p_data)
{
    UINT16 buf_len = (UINT16)(sizeof(BT_HDR) + p_tcb->payload_size + L2CAP_MIN_OFFSET);
    tGATT_STATUS reason;
    BT_HDR *p_msg = ((void*)0);
    UINT8 sec_flag, key_size, *p;
    UINT16 offset = 0, value_len = 0;

    UNUSED (len);
    if ((p_msg = (BT_HDR *)osi_calloc(buf_len)) == ((void*)0)) {
        GATT_TRACE_ERROR("gatts_process_find_info failed. no resources.\n");

        reason = GATT_NO_RESOURCES;
    } else {
        if (op_code == GATT_REQ_READ_BLOB) {
            STREAM_TO_UINT16(offset, p_data);
        }

        p = (UINT8 *)(p_msg + 1) + L2CAP_MIN_OFFSET;
        *p ++ = op_code + 1;
        p_msg->len = 1;
        buf_len = p_tcb->payload_size - 1;

        gatt_sr_get_sec_info(p_tcb->peer_bda,
                             p_tcb->transport,
                             &sec_flag,
                             &key_size);

        reason = gatts_read_attr_value_by_handle(p_tcb,
                 p_rcb->p_db,
                 op_code,
                 handle,
                 offset,
                 p,
                 &value_len,
                 buf_len,
                 sec_flag,
                 key_size,
                 0);

        p_msg->len += value_len;
    }


    if (reason != GATT_SUCCESS && reason != GATT_PENDING && reason != GATT_STACK_RSP) {
        if (p_msg) {
            osi_free(p_msg);
        }


        if (reason != GATT_BUSY) {
            gatt_send_error_rsp (p_tcb, reason, op_code, handle, FALSE);
            gatt_dequeue_sr_cmd(p_tcb);
        }
    } else if (reason == GATT_SUCCESS || reason == GATT_STACK_RSP) {
        attp_send_sr_msg(p_tcb, p_msg);
        gatt_dequeue_sr_cmd(p_tcb);
    } else {
        if (p_msg) {
            osi_free(p_msg);
        }
    }

}
