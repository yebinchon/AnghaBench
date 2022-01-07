
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {int * ertm_byte_counts; int * ertm_pkt_counts; int waiting_for_ack_q; int pkts_retransmitted; int retrans_q; } ;
struct TYPE_13__ {scalar_t__ mode; } ;
struct TYPE_14__ {TYPE_1__ fcr; } ;
struct TYPE_16__ {scalar_t__ tx_mps; scalar_t__ local_cid; scalar_t__ remote_cid; scalar_t__ bypass_fcs; TYPE_3__ fcrb; TYPE_2__ peer_cfg; int xmit_hold_q; } ;
typedef TYPE_4__ tL2C_CCB ;
typedef int UINT8 ;
typedef scalar_t__ UINT16 ;
struct TYPE_17__ {scalar_t__ event; int len; scalar_t__ offset; int layer_specific; } ;
typedef TYPE_5__ BT_HDR ;
typedef scalar_t__ BOOLEAN ;


 scalar_t__ FALSE ;
 int FIXED_QUEUE_MAX_TIMEOUT ;
 scalar_t__ HCI_DATA_PREAMBLE_SIZE ;
 scalar_t__ L2CAP_BYPASS_FCS ;
 int L2CAP_FCR_CONT_SDU ;
 int L2CAP_FCR_END_SDU ;
 scalar_t__ L2CAP_FCR_ERTM_MODE ;
 scalar_t__ L2CAP_FCR_OVERHEAD ;
 int L2CAP_FCR_START_SDU ;
 int L2CAP_FCR_UNSEG_SDU ;
 int L2CAP_FCS_LEN ;
 scalar_t__ L2CAP_MAX_HEADER_FCS ;
 scalar_t__ L2CAP_MIN_OFFSET ;
 scalar_t__ L2CAP_PKT_OVERHEAD ;
 scalar_t__ L2CAP_SDU_LEN_OFFSET ;
 scalar_t__ L2CAP_SDU_LEN_OVERHEAD ;
 int L2CAP_TRACE_ERROR (char*,scalar_t__,...) ;
 scalar_t__ TRUE ;
 int UINT16_TO_STREAM (int *,scalar_t__) ;
 int UINT32_TO_STREAM (int *,int ) ;
 int assert (int ) ;
 scalar_t__ fixed_queue_dequeue (int ,int ) ;
 int fixed_queue_enqueue (int ,TYPE_5__*,int ) ;
 scalar_t__ fixed_queue_try_peek_first (int ) ;
 TYPE_5__* l2c_fcr_clone_buf (TYPE_5__*,scalar_t__,scalar_t__) ;
 int osi_time_get_os_boottime_ms () ;
 int prepare_I_frame (TYPE_4__*,TYPE_5__*,scalar_t__) ;

BT_HDR *l2c_fcr_get_next_xmit_sdu_seg (tL2C_CCB *p_ccb, UINT16 max_packet_length)
{
    assert(p_ccb != ((void*)0));

    BOOLEAN first_seg = FALSE,
                mid_seg = FALSE,
                last_seg = FALSE;
    UINT16 sdu_len = 0;
    BT_HDR *p_buf, *p_xmit;
    UINT8 *p;
    UINT16 max_pdu = p_ccb->tx_mps ;



    p_buf = (BT_HDR *)fixed_queue_dequeue(p_ccb->fcrb.retrans_q, 0);
    if (p_buf != ((void*)0)) {

        prepare_I_frame (p_ccb, p_buf, TRUE);

        p_buf->event = p_ccb->local_cid;


        p_ccb->fcrb.pkts_retransmitted++;
        p_ccb->fcrb.ertm_pkt_counts[0]++;
        p_ccb->fcrb.ertm_byte_counts[0] += (p_buf->len - 8);

        return (p_buf);
    }



    if ( (max_packet_length > L2CAP_MAX_HEADER_FCS)
            && (max_pdu + L2CAP_MAX_HEADER_FCS > max_packet_length) ) {
        max_pdu = max_packet_length - L2CAP_MAX_HEADER_FCS;
    }

    p_buf = (BT_HDR *)fixed_queue_try_peek_first(p_ccb->xmit_hold_q);


    if (p_buf->len > max_pdu) {

        if (p_buf->event == 0) {
            first_seg = TRUE;
            sdu_len = p_buf->len;
        } else {
            mid_seg = TRUE;
        }


        p_xmit = l2c_fcr_clone_buf (p_buf, L2CAP_MIN_OFFSET + L2CAP_SDU_LEN_OFFSET,
                                    max_pdu);

        if (p_xmit != ((void*)0)) {
            p_buf->event = p_ccb->local_cid;
            p_xmit->event = p_ccb->local_cid;

            p_buf->len -= max_pdu;
            p_buf->offset += max_pdu;


            p_xmit->layer_specific = p_buf->layer_specific;
        } else {
            L2CAP_TRACE_ERROR ("L2CAP - cannot get buffer for segmentation, max_pdu: %u", max_pdu);
            return (((void*)0));
        }
    } else {
        p_xmit = (BT_HDR *)fixed_queue_dequeue(p_ccb->xmit_hold_q, 0);

        if (p_xmit->event != 0) {
            last_seg = TRUE;
        }

        p_xmit->event = p_ccb->local_cid;
    }


    p_xmit->offset -= (L2CAP_PKT_OVERHEAD + L2CAP_FCR_OVERHEAD);
    p_xmit->len += L2CAP_PKT_OVERHEAD + L2CAP_FCR_OVERHEAD;

    if (first_seg) {
        p_xmit->offset -= L2CAP_SDU_LEN_OVERHEAD;
        p_xmit->len += L2CAP_SDU_LEN_OVERHEAD;
    }


    p = (UINT8 *)(p_xmit + 1) + p_xmit->offset;




    UINT16_TO_STREAM (p, p_xmit->len - L2CAP_PKT_OVERHEAD);

    UINT16_TO_STREAM (p, p_ccb->remote_cid);

    if (first_seg) {

        p += 2;
        UINT16_TO_STREAM (p, sdu_len);



        p_xmit->layer_specific |= L2CAP_FCR_START_SDU;

        first_seg = FALSE;
    } else if (mid_seg) {
        p_xmit->layer_specific |= L2CAP_FCR_CONT_SDU;
    } else if (last_seg) {
        p_xmit->layer_specific |= L2CAP_FCR_END_SDU;
    } else {
        p_xmit->layer_specific |= L2CAP_FCR_UNSEG_SDU;
    }

    prepare_I_frame (p_ccb, p_xmit, FALSE);

    if (p_ccb->peer_cfg.fcr.mode == L2CAP_FCR_ERTM_MODE) {
        BT_HDR *p_wack = l2c_fcr_clone_buf (p_xmit, HCI_DATA_PREAMBLE_SIZE, p_xmit->len);

        if (!p_wack) {
            L2CAP_TRACE_ERROR("L2CAP - no buffer for xmit cloning, CID: 0x%04x  Length: %u",
                              p_ccb->local_cid, p_xmit->len);


            if (p_ccb->bypass_fcs != L2CAP_BYPASS_FCS) {
                p_xmit->len -= L2CAP_FCS_LEN;
            }


            fixed_queue_enqueue(p_ccb->fcrb.waiting_for_ack_q, p_xmit, FIXED_QUEUE_MAX_TIMEOUT);
            return (((void*)0));
        } else {


            p = ((UINT8 *) (p_wack + 1)) + p_wack->offset + p_wack->len;
            UINT32_TO_STREAM (p, osi_time_get_os_boottime_ms());


            if (p_ccb->bypass_fcs != L2CAP_BYPASS_FCS) {
                p_wack->len -= L2CAP_FCS_LEN;
            }

            p_wack->layer_specific = p_xmit->layer_specific;
            fixed_queue_enqueue(p_ccb->fcrb.waiting_for_ack_q, p_wack, FIXED_QUEUE_MAX_TIMEOUT);
        }


        p_ccb->fcrb.ertm_pkt_counts[0]++;
        p_ccb->fcrb.ertm_byte_counts[0] += (p_xmit->len - 8);


    }

    return (p_xmit);
}
