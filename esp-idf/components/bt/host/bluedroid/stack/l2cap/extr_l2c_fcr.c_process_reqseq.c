
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int last_rx_ack; int waiting_for_ack_q; int wait_ack; scalar_t__ num_tries; } ;
typedef TYPE_3__ tL2C_FCRB ;
struct TYPE_15__ {int local_cid; TYPE_2__* p_rcb; int xmit_hold_q; TYPE_3__ fcrb; } ;
typedef TYPE_4__ tL2C_CCB ;
typedef int UINT8 ;
typedef int UINT16 ;
struct TYPE_16__ {int layer_specific; } ;
struct TYPE_12__ {int (* pL2CA_TxComplete_Cb ) (int ,int) ;} ;
struct TYPE_13__ {TYPE_1__ api; } ;
typedef TYPE_5__ BT_HDR ;
typedef int BOOLEAN ;


 int FALSE ;
 int L2CAP_FCR_END_SDU ;
 int L2CAP_FCR_P_BIT ;
 int L2CAP_FCR_REQ_SEQ_BITS ;
 int L2CAP_FCR_REQ_SEQ_BITS_SHIFT ;
 int L2CAP_FCR_SAR_BITS ;
 int L2CAP_FCR_SEQ_MODULO ;
 int L2CAP_FCR_SUP_BITS ;
 int L2CAP_FCR_SUP_SHIFT ;
 int L2CAP_FCR_SUP_SREJ ;
 int L2CAP_FCR_S_FRAME_BIT ;
 int L2CAP_FCR_UNSEG_SDU ;
 int L2CAP_TRACE_WARNING (char*,int,int,int,int) ;
 int TRUE ;
 int assert (int ) ;
 scalar_t__ fixed_queue_dequeue (int ,int ) ;
 scalar_t__ fixed_queue_is_empty (int ) ;
 int fixed_queue_length (int ) ;
 int l2c_fcr_collect_ack_delay (TYPE_4__*,int) ;
 int l2c_fcr_start_timer (TYPE_4__*) ;
 int l2c_fcr_stop_timer (TYPE_4__*) ;
 int l2cu_disconnect_chnl (TYPE_4__*) ;
 int osi_free (TYPE_5__*) ;
 int stub1 (int ,int) ;

__attribute__((used)) static BOOLEAN process_reqseq (tL2C_CCB *p_ccb, UINT16 ctrl_word)
{
    assert(p_ccb != ((void*)0));
    tL2C_FCRB *p_fcrb = &p_ccb->fcrb;
    UINT8 req_seq, num_bufs_acked, xx;
    UINT16 ls;
    UINT16 full_sdus_xmitted;


    if ( (ctrl_word & L2CAP_FCR_S_FRAME_BIT)
            && ((ctrl_word & L2CAP_FCR_SUP_BITS) == (L2CAP_FCR_SUP_SREJ << L2CAP_FCR_SUP_SHIFT))
            && ((ctrl_word & L2CAP_FCR_P_BIT) == 0) ) {

        if (!fixed_queue_is_empty(p_fcrb->waiting_for_ack_q)) {
            l2c_fcr_start_timer(p_ccb);
  }

        return (TRUE);
    }


    req_seq = (ctrl_word & L2CAP_FCR_REQ_SEQ_BITS) >> L2CAP_FCR_REQ_SEQ_BITS_SHIFT;

    num_bufs_acked = (req_seq - p_fcrb->last_rx_ack) & L2CAP_FCR_SEQ_MODULO;


    if (num_bufs_acked > fixed_queue_length(p_fcrb->waiting_for_ack_q)) {

        L2CAP_TRACE_WARNING ("L2CAP eRTM Frame BAD Req_Seq - ctrl_word: 0x%04x  req_seq 0x%02x  last_rx_ack: 0x%02x  QCount: %u",
                             ctrl_word, req_seq, p_fcrb->last_rx_ack,
                             fixed_queue_length(p_fcrb->waiting_for_ack_q));

        l2cu_disconnect_chnl (p_ccb);
        return (FALSE);
    }

    p_fcrb->last_rx_ack = req_seq;


    if (num_bufs_acked != 0) {
        p_fcrb->num_tries = 0;
        full_sdus_xmitted = 0;


        l2c_fcr_collect_ack_delay (p_ccb, num_bufs_acked);


        for (xx = 0; xx < num_bufs_acked; xx++) {
            BT_HDR *p_tmp = (BT_HDR *)fixed_queue_dequeue(p_fcrb->waiting_for_ack_q, 0);
            ls = p_tmp->layer_specific & L2CAP_FCR_SAR_BITS;

            if ( (ls == L2CAP_FCR_UNSEG_SDU) || (ls == L2CAP_FCR_END_SDU) ) {
                full_sdus_xmitted++;
            }
            osi_free(p_tmp);
        }


        if (!p_ccb->fcrb.wait_ack) {
            l2c_fcr_stop_timer (p_ccb);
        }


        if ( (p_ccb->p_rcb) && (p_ccb->p_rcb->api.pL2CA_TxComplete_Cb) && (full_sdus_xmitted) ) {

            if (fixed_queue_is_empty(p_fcrb->waiting_for_ack_q) &&
                fixed_queue_is_empty(p_ccb->xmit_hold_q)) {
                full_sdus_xmitted = 0xFFFF;
            }

            (*p_ccb->p_rcb->api.pL2CA_TxComplete_Cb)(p_ccb->local_cid, full_sdus_xmitted);
        }
    }


    if (!fixed_queue_is_empty(p_fcrb->waiting_for_ack_q)) {
        l2c_fcr_start_timer (p_ccb);
    }

    return (TRUE);
}
