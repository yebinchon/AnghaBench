
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_3__* p_lcb; } ;
typedef TYPE_1__ tL2C_CCB ;
struct TYPE_6__ {int ucd_out_sec_pending_q; } ;
typedef int BT_HDR ;


 scalar_t__ fixed_queue_dequeue (int ,int ) ;
 int l2c_enqueue_peer_data (TYPE_1__*,int *) ;
 int l2c_link_check_send_pkts (TYPE_3__*,int *,int *) ;

void l2c_ucd_send_pending_out_sec_q(tL2C_CCB *p_ccb)
{
    BT_HDR *p_buf = (BT_HDR*)fixed_queue_dequeue(p_ccb->p_lcb->ucd_out_sec_pending_q, 0);

    if (p_buf != ((void*)0)) {
        l2c_enqueue_peer_data (p_ccb, (BT_HDR *)p_buf);
        l2c_link_check_send_pkts (p_ccb->p_lcb, ((void*)0), ((void*)0));
    }
}
