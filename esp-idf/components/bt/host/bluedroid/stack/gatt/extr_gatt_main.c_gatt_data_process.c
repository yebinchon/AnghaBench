
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int tGATT_TCB ;
typedef int UINT8 ;
typedef scalar_t__ UINT16 ;
struct TYPE_5__ {int offset; scalar_t__ len; } ;
typedef TYPE_1__ BT_HDR ;


 int FALSE ;
 int GATT_COMMAND_FLAG ;
 int GATT_OP_CODE_MAX ;
 int GATT_REQ_NOT_SUPPORTED ;
 int GATT_SIGN_CMD_WRITE ;
 int GATT_TRACE_ERROR (char*,...) ;
 int GATT_WRITE_CMD_MASK ;
 int STREAM_TO_UINT8 (int,int*) ;
 int gatt_client_handle_server_rsp (int *,int,scalar_t__,int*) ;
 int gatt_send_error_rsp (int *,int ,int,int ,int ) ;
 int gatt_server_handle_client_req (int *,int,scalar_t__,int*) ;
 int gatt_verify_signature (int *,TYPE_1__*) ;
 int osi_free (TYPE_1__*) ;

void gatt_data_process (tGATT_TCB *p_tcb, BT_HDR *p_buf)
{
    UINT8 *p = (UINT8 *)(p_buf + 1) + p_buf->offset;
    UINT8 op_code, pseudo_op_code;

    UINT16 msg_len;



    if (p_buf->len > 0) {

        msg_len = p_buf->len - 1;

        STREAM_TO_UINT8(op_code, p);


        pseudo_op_code = op_code & (~GATT_WRITE_CMD_MASK);

        if (pseudo_op_code < GATT_OP_CODE_MAX) {
            if (op_code == GATT_SIGN_CMD_WRITE) {

                gatt_verify_signature(p_tcb, p_buf);

            } else {

                if ((op_code % 2) == 0) {

                    gatt_server_handle_client_req (p_tcb, op_code, msg_len, p);

                } else {

                    gatt_client_handle_server_rsp (p_tcb, op_code, msg_len, p);

                }
            }
        } else {
            if (op_code & GATT_COMMAND_FLAG) {
                GATT_TRACE_ERROR ("ATT - Rcvd L2CAP data, unknown cmd: 0x%x\n", op_code);
            } else {
                GATT_TRACE_ERROR ("ATT - Rcvd L2CAP data, unknown req: 0x%x\n", op_code);
                gatt_send_error_rsp (p_tcb, GATT_REQ_NOT_SUPPORTED, op_code, 0, FALSE);
            }
        }
    } else {
        GATT_TRACE_ERROR ("invalid data length, ignore\n");
    }

    osi_free (p_buf);
}
