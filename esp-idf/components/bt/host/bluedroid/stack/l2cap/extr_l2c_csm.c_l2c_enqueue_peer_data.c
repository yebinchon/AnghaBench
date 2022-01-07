
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ mode; } ;
struct TYPE_13__ {TYPE_1__ fcr; } ;
struct TYPE_16__ {int remote_cid; size_t ccb_priority; TYPE_4__* p_lcb; int xmit_hold_q; int local_cid; TYPE_2__ peer_cfg; } ;
typedef TYPE_5__ tL2C_CCB ;
typedef int UINT8 ;
struct TYPE_18__ {int check_round_robin; } ;
struct TYPE_17__ {int offset; int len; int event; } ;
struct TYPE_15__ {size_t rr_pri; scalar_t__ link_xmit_quota; TYPE_3__* rr_serv; } ;
struct TYPE_14__ {scalar_t__ quota; } ;
typedef TYPE_6__ BT_HDR ;


 int FIXED_QUEUE_MAX_TIMEOUT ;
 scalar_t__ L2CAP_FCR_BASIC_MODE ;
 int L2CAP_PKT_OVERHEAD ;
 int TRUE ;
 int UINT16_TO_STREAM (int *,int) ;
 int fixed_queue_enqueue (int ,TYPE_6__*,int ) ;
 TYPE_8__ l2cb ;
 int l2cu_check_channel_congestion (TYPE_5__*) ;

void l2c_enqueue_peer_data (tL2C_CCB *p_ccb, BT_HDR *p_buf)
{
    UINT8 *p;

    if (p_ccb->peer_cfg.fcr.mode != L2CAP_FCR_BASIC_MODE) {
        p_buf->event = 0;
    } else {

        p_buf->event = p_ccb->local_cid;


        p_buf->offset -= L2CAP_PKT_OVERHEAD;
        p_buf->len += L2CAP_PKT_OVERHEAD;


        p = (UINT8 *)(p_buf + 1) + p_buf->offset;


        UINT16_TO_STREAM (p, p_buf->len - L2CAP_PKT_OVERHEAD);
        UINT16_TO_STREAM (p, p_ccb->remote_cid);
    }

    fixed_queue_enqueue(p_ccb->xmit_hold_q, p_buf, FIXED_QUEUE_MAX_TIMEOUT);

    l2cu_check_channel_congestion (p_ccb);



    if (( p_ccb->p_lcb->rr_pri > p_ccb->ccb_priority )
            && ( p_ccb->p_lcb->rr_serv[p_ccb->ccb_priority].quota > 0)) {

        p_ccb->p_lcb->rr_pri = p_ccb->ccb_priority;
    }



    if (p_ccb->p_lcb->link_xmit_quota == 0) {
        l2cb.check_round_robin = TRUE;
    }
}
