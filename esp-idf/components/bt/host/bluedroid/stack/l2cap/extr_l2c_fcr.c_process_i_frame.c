
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_19__ ;


struct TYPE_21__ {int in_use; } ;
struct TYPE_25__ {int next_seq_expected; int last_ack_sent; int max_held_acks; scalar_t__ local_busy; int srej_rcv_hold_q; TYPE_19__ ack_timer; void* srej_sent; void* rej_sent; void* rej_after_srej; int * ertm_byte_counts; int * ertm_pkt_counts; } ;
typedef TYPE_4__ tL2C_FCRB ;
struct TYPE_23__ {int tx_win_sz; } ;
struct TYPE_24__ {TYPE_2__ fcr; } ;
struct TYPE_22__ {scalar_t__ fcr_rx_buf_size; } ;
struct TYPE_26__ {int local_cid; scalar_t__ chnl_state; TYPE_4__ fcrb; int xmit_hold_q; scalar_t__ in_use; TYPE_3__ our_cfg; TYPE_1__ ertm_info; } ;
typedef TYPE_5__ tL2C_CCB ;
typedef int UINT8 ;
typedef int UINT16 ;
struct TYPE_27__ {int layer_specific; scalar_t__ len; int offset; } ;
typedef TYPE_6__ BT_HDR ;
typedef void* BOOLEAN ;


 int BTU_TTYPE_L2CAP_FCR_ACK ;
 scalar_t__ CST_OPEN ;
 void* FALSE ;
 int FIXED_QUEUE_MAX_TIMEOUT ;
 int L2CAP_FCR_ACK_TOUT ;
 int L2CAP_FCR_F_BIT ;
 scalar_t__ L2CAP_FCR_OVERHEAD ;
 scalar_t__ L2CAP_FCR_RX_BUF_SIZE ;
 int L2CAP_FCR_SEQ_MODULO ;
 int L2CAP_FCR_SUP_REJ ;
 int L2CAP_FCR_SUP_RNR ;
 int L2CAP_FCR_SUP_RR ;
 int L2CAP_FCR_SUP_SREJ ;
 int L2CAP_FCR_TX_SEQ_BITS ;
 int L2CAP_FCR_TX_SEQ_BITS_SHIFT ;
 int L2CAP_TRACE_DEBUG (char*,int,int,int,void*) ;
 int L2CAP_TRACE_ERROR (char*,int,int,int) ;
 int L2CAP_TRACE_WARNING (char*,int,...) ;
 int L2C_FCR_RETX_ALL_PKTS ;
 int QUICK_TIMER_TICKS_PER_SEC ;
 void* TRUE ;
 int assert (int ) ;
 int btu_start_quick_timer (TYPE_19__*,int ,int) ;
 int btu_stop_quick_timer (TYPE_19__*) ;
 int do_sar_reassembly (TYPE_5__*,TYPE_6__*,int) ;
 int fixed_queue_enqueue (int ,TYPE_6__*,int ) ;
 scalar_t__ fixed_queue_is_empty (int ) ;
 int fixed_queue_length (int ) ;
 scalar_t__ fixed_queue_try_peek_last (int ) ;
 TYPE_6__* l2c_fcr_clone_buf (TYPE_6__*,int ,scalar_t__) ;
 scalar_t__ l2c_fcr_is_flow_controlled (TYPE_5__*) ;
 int l2c_fcr_send_S_frame (TYPE_5__*,int ,int ) ;
 int l2cu_disconnect_chnl (TYPE_5__*) ;
 int osi_free (TYPE_6__*) ;
 int retransmit_i_frames (TYPE_5__*,int ) ;

__attribute__((used)) static void process_i_frame (tL2C_CCB *p_ccb, BT_HDR *p_buf, UINT16 ctrl_word, BOOLEAN delay_ack)
{
    assert(p_ccb != ((void*)0));
    assert(p_buf != ((void*)0));

    tL2C_FCRB *p_fcrb = &p_ccb->fcrb;
    UINT8 tx_seq, num_lost, num_to_ack, next_srej;


    if (ctrl_word & L2CAP_FCR_F_BIT) {
        if (!retransmit_i_frames (p_ccb, L2C_FCR_RETX_ALL_PKTS)) {
            osi_free(p_buf);
            return;
        }
    }


    p_ccb->fcrb.ertm_pkt_counts[1]++;
    p_ccb->fcrb.ertm_byte_counts[1] += p_buf->len;



    tx_seq = (ctrl_word & L2CAP_FCR_TX_SEQ_BITS) >> L2CAP_FCR_TX_SEQ_BITS_SHIFT;


    if ( (tx_seq != p_fcrb->next_seq_expected) && (p_fcrb->local_busy) ) {
        L2CAP_TRACE_WARNING ("Dropping bad I-Frame since we flowed off, tx_seq:%u", tx_seq);
        l2c_fcr_send_S_frame (p_ccb, L2CAP_FCR_SUP_RNR, 0);
        osi_free(p_buf);
        return;
    }


    if (tx_seq != p_fcrb->next_seq_expected) {
        num_lost = (tx_seq - p_fcrb->next_seq_expected) & L2CAP_FCR_SEQ_MODULO;


        if (num_lost >= p_ccb->our_cfg.fcr.tx_win_sz) {

            L2CAP_TRACE_WARNING ("process_i_frame() Dropping Duplicate Frame tx_seq:%u  ExpectedTxSeq %u", tx_seq, p_fcrb->next_seq_expected);
            osi_free(p_buf);
        } else {
            L2CAP_TRACE_WARNING ("process_i_frame() CID: 0x%04x  Lost: %u  tx_seq:%u  ExpTxSeq %u  Rej: %u  SRej: %u",
                                 p_ccb->local_cid, num_lost, tx_seq, p_fcrb->next_seq_expected, p_fcrb->rej_sent, p_fcrb->srej_sent);

            if (p_fcrb->srej_sent) {

                next_srej = (((BT_HDR *)fixed_queue_try_peek_last(p_fcrb->srej_rcv_hold_q))->layer_specific + 1) & L2CAP_FCR_SEQ_MODULO;

                if ( (tx_seq == next_srej) && (fixed_queue_length(p_fcrb->srej_rcv_hold_q) < p_ccb->our_cfg.fcr.tx_win_sz) ) {


                    if (p_ccb->ertm_info.fcr_rx_buf_size != L2CAP_FCR_RX_BUF_SIZE) {
                        BT_HDR *p_buf2;


                        p_buf->offset -= L2CAP_FCR_OVERHEAD;
                        p_buf->len += L2CAP_FCR_OVERHEAD;

                        p_buf2 = l2c_fcr_clone_buf (p_buf, p_buf->offset, p_buf->len);

                        if (p_buf2) {
                            osi_free (p_buf);
                            p_buf = p_buf2;
                        }
                        p_buf->offset += L2CAP_FCR_OVERHEAD;
                        p_buf->len -= L2CAP_FCR_OVERHEAD;
                    }
                    L2CAP_TRACE_DEBUG ("process_i_frame() Lost: %u  tx_seq:%u  ExpTxSeq %u  Rej: %u  SRej1",
                                       num_lost, tx_seq, p_fcrb->next_seq_expected, p_fcrb->rej_sent);

                    p_buf->layer_specific = tx_seq;
                    fixed_queue_enqueue(p_fcrb->srej_rcv_hold_q, p_buf, FIXED_QUEUE_MAX_TIMEOUT);
                } else {
                    L2CAP_TRACE_WARNING ("process_i_frame() CID: 0x%04x  frame dropped in Srej Sent next_srej:%u  hold_q.count:%u  win_sz:%u",
                                         p_ccb->local_cid, next_srej, fixed_queue_length(p_fcrb->srej_rcv_hold_q), p_ccb->our_cfg.fcr.tx_win_sz);

                    p_fcrb->rej_after_srej = TRUE;
                    osi_free (p_buf);
                }
            } else if (p_fcrb->rej_sent) {
                L2CAP_TRACE_WARNING ("process_i_frame() CID: 0x%04x  Lost: %u  tx_seq:%u  ExpTxSeq %u  Rej: 1  SRej: %u",
                                     p_ccb->local_cid, num_lost, tx_seq, p_fcrb->next_seq_expected, p_fcrb->srej_sent);


                osi_free (p_buf);
            } else {
                L2CAP_TRACE_DEBUG ("process_i_frame() CID: 0x%04x  tx_seq:%u  ExpTxSeq %u  Rej: %u",
                                   p_ccb->local_cid, tx_seq, p_fcrb->next_seq_expected, p_fcrb->rej_sent);


                if (num_lost > 1) {
                    osi_free (p_buf);
                    p_fcrb->rej_sent = TRUE;
                    l2c_fcr_send_S_frame (p_ccb, L2CAP_FCR_SUP_REJ, 0);
                } else {
                    if (!fixed_queue_is_empty(p_fcrb->srej_rcv_hold_q)) {
                        L2CAP_TRACE_ERROR ("process_i_frame() CID: 0x%04x  sending SREJ tx_seq:%d hold_q.count:%u",
                                             p_ccb->local_cid, tx_seq, fixed_queue_length(p_fcrb->srej_rcv_hold_q));
                    }
                    p_buf->layer_specific = tx_seq;
                    fixed_queue_enqueue(p_fcrb->srej_rcv_hold_q, p_buf, FIXED_QUEUE_MAX_TIMEOUT);
                    p_fcrb->srej_sent = TRUE;
                    l2c_fcr_send_S_frame (p_ccb, L2CAP_FCR_SUP_SREJ, 0);
                }
                btu_stop_quick_timer (&p_ccb->fcrb.ack_timer);
            }
        }
        return;
    }


    p_fcrb->rej_sent = p_fcrb->srej_sent = FALSE;



    p_fcrb->next_seq_expected = (tx_seq + 1) & L2CAP_FCR_SEQ_MODULO;


    if (!do_sar_reassembly (p_ccb, p_buf, ctrl_word)) {
        L2CAP_TRACE_WARNING ("process_i_frame() CID: 0x%04x  reassembly failed", p_ccb->local_cid);
        l2cu_disconnect_chnl (p_ccb);
        return;
    }


    num_to_ack = (p_fcrb->next_seq_expected - p_fcrb->last_ack_sent) & L2CAP_FCR_SEQ_MODULO;

    if ( (num_to_ack < p_ccb->fcrb.max_held_acks) && (!p_fcrb->local_busy) ) {
        delay_ack = TRUE;
    }


    if ((num_to_ack != 0) && p_ccb->in_use && (p_ccb->chnl_state == CST_OPEN)) {

        if (delay_ack) {

            if (!p_ccb->fcrb.ack_timer.in_use) {
                btu_start_quick_timer (&p_ccb->fcrb.ack_timer, BTU_TTYPE_L2CAP_FCR_ACK,
                                       (L2CAP_FCR_ACK_TOUT * QUICK_TIMER_TICKS_PER_SEC) / 1000);
            }
        } else if ((fixed_queue_is_empty(p_ccb->xmit_hold_q) ||
                  l2c_fcr_is_flow_controlled(p_ccb))
                 && fixed_queue_is_empty(p_ccb->fcrb.srej_rcv_hold_q)) {
            if (p_fcrb->local_busy) {
                l2c_fcr_send_S_frame (p_ccb, L2CAP_FCR_SUP_RNR, 0);
            } else {
                l2c_fcr_send_S_frame (p_ccb, L2CAP_FCR_SUP_RR, 0);
            }
        }
    }
}
