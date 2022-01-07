
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* p_lcb; } ;
typedef TYPE_2__ tL2C_CCB ;
struct TYPE_5__ {scalar_t__ transport; } ;


 scalar_t__ BT_TRANSPORT_LE ;
 int L2CAP_TRACE_WARNING (char*) ;
 int l2cu_send_peer_ble_credit_based_conn_req (TYPE_2__*) ;

void l2cble_credit_based_conn_req (tL2C_CCB *p_ccb)
{
    if (!p_ccb) {
        return;
    }

    if (p_ccb->p_lcb && p_ccb->p_lcb->transport != BT_TRANSPORT_LE)
    {
        L2CAP_TRACE_WARNING ("LE link doesn't exist");
        return;
    }

    l2cu_send_peer_ble_credit_based_conn_req (p_ccb);
    return;
}
