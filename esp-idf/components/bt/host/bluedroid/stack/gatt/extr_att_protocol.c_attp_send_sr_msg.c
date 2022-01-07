
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tGATT_TCB ;
typedef int tGATT_STATUS ;
struct TYPE_4__ {int offset; } ;
typedef TYPE_1__ BT_HDR ;


 int GATT_NO_RESOURCES ;
 int L2CAP_MIN_OFFSET ;
 int attp_send_msg_to_l2cap (int *,TYPE_1__*) ;

tGATT_STATUS attp_send_sr_msg (tGATT_TCB *p_tcb, BT_HDR *p_msg)
{
    tGATT_STATUS cmd_sent = GATT_NO_RESOURCES;

    if (p_tcb != ((void*)0)) {
        if (p_msg != ((void*)0)) {
            p_msg->offset = L2CAP_MIN_OFFSET;
            cmd_sent = attp_send_msg_to_l2cap (p_tcb, p_msg);
        }
    }
    return cmd_sent;
}
