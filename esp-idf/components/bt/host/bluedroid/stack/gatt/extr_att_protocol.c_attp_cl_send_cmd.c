
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ pending_cl_req; scalar_t__ next_slot_inq; } ;
typedef TYPE_1__ tGATT_TCB ;
typedef scalar_t__ tGATT_STATUS ;
typedef int UINT8 ;
typedef int UINT16 ;
typedef int BT_HDR ;


 int FALSE ;
 int GATT_AUTH_SIGN_MASK ;
 scalar_t__ GATT_CMD_STARTED ;
 int GATT_CMD_WRITE ;
 scalar_t__ GATT_CONGESTED ;
 scalar_t__ GATT_ERROR ;
 int GATT_HANDLE_VALUE_CONF ;
 scalar_t__ GATT_INTERNAL_ERROR ;
 scalar_t__ GATT_SUCCESS ;
 int TRUE ;
 scalar_t__ attp_send_msg_to_l2cap (TYPE_1__*,int *) ;
 int gatt_cmd_enq (TYPE_1__*,int ,int ,int ,int *) ;
 int gatt_start_rsp_timer (int ) ;

tGATT_STATUS attp_cl_send_cmd(tGATT_TCB *p_tcb, UINT16 clcb_idx, UINT8 cmd_code, BT_HDR *p_cmd)
{
    tGATT_STATUS att_ret = GATT_SUCCESS;

    if (p_tcb != ((void*)0)) {
        cmd_code &= ~GATT_AUTH_SIGN_MASK;


        if (p_tcb->pending_cl_req == p_tcb->next_slot_inq ||
                cmd_code == GATT_HANDLE_VALUE_CONF) {
            att_ret = attp_send_msg_to_l2cap(p_tcb, p_cmd);
            if (att_ret == GATT_CONGESTED || att_ret == GATT_SUCCESS) {

                if (cmd_code != GATT_HANDLE_VALUE_CONF && cmd_code != GATT_CMD_WRITE) {
                    gatt_start_rsp_timer (clcb_idx);
                    gatt_cmd_enq(p_tcb, clcb_idx, FALSE, cmd_code, ((void*)0));
                }
            } else {
                att_ret = GATT_INTERNAL_ERROR;
            }
        } else {
            att_ret = GATT_CMD_STARTED;
            gatt_cmd_enq(p_tcb, clcb_idx, TRUE, cmd_code, p_cmd);
        }
    } else {
        att_ret = GATT_ERROR;
    }

    return att_ret;
}
