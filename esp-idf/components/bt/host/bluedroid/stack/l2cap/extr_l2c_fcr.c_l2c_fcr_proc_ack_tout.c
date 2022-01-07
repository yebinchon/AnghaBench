
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ next_seq_expected; scalar_t__ last_ack_sent; scalar_t__ local_busy; int xmit_ack_touts; int wait_ack; } ;
struct TYPE_6__ {scalar_t__ chnl_state; TYPE_1__ fcrb; int local_cid; } ;
typedef TYPE_2__ tL2C_CCB ;


 scalar_t__ CST_OPEN ;
 int L2CAP_FCR_SUP_RNR ;
 int L2CAP_FCR_SUP_RR ;
 int L2CAP_TRACE_DEBUG (char*,int ,scalar_t__,int ,scalar_t__,scalar_t__) ;
 int assert (int ) ;
 int l2c_fcr_send_S_frame (TYPE_2__*,int ,int ) ;

void l2c_fcr_proc_ack_tout (tL2C_CCB *p_ccb)
{
    assert(p_ccb != ((void*)0));
    L2CAP_TRACE_DEBUG ("l2c_fcr_proc_ack_tout:  CID: 0x%04x State: %u  Wack:%u  Rq:%d  Acked:%d", p_ccb->local_cid,
                       p_ccb->chnl_state, p_ccb->fcrb.wait_ack, p_ccb->fcrb.next_seq_expected, p_ccb->fcrb.last_ack_sent);

    if ( (p_ccb->chnl_state == CST_OPEN) && (!p_ccb->fcrb.wait_ack)
            && (p_ccb->fcrb.last_ack_sent != p_ccb->fcrb.next_seq_expected) ) {

        p_ccb->fcrb.xmit_ack_touts++;

        if (p_ccb->fcrb.local_busy) {
            l2c_fcr_send_S_frame (p_ccb, L2CAP_FCR_SUP_RNR, 0);
        } else {
            l2c_fcr_send_S_frame (p_ccb, L2CAP_FCR_SUP_RR, 0);
        }
    }
}
