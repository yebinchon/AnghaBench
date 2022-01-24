#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int last_rx_ack; int /*<<< orphan*/  waiting_for_ack_q; int /*<<< orphan*/  wait_ack; scalar_t__ num_tries; } ;
typedef  TYPE_3__ tL2C_FCRB ;
struct TYPE_15__ {int /*<<< orphan*/  local_cid; TYPE_2__* p_rcb; int /*<<< orphan*/  xmit_hold_q; TYPE_3__ fcrb; } ;
typedef  TYPE_4__ tL2C_CCB ;
typedef  int UINT8 ;
typedef  int UINT16 ;
struct TYPE_16__ {int layer_specific; } ;
struct TYPE_12__ {int /*<<< orphan*/  (* pL2CA_TxComplete_Cb ) (int /*<<< orphan*/ ,int) ;} ;
struct TYPE_13__ {TYPE_1__ api; } ;
typedef  TYPE_5__ BT_HDR ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
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
 int /*<<< orphan*/  FUNC0 (char*,int,int,int,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static BOOLEAN FUNC11 (tL2C_CCB *p_ccb, UINT16 ctrl_word)
{
    FUNC1(p_ccb != NULL);
    tL2C_FCRB   *p_fcrb = &p_ccb->fcrb;
    UINT8       req_seq, num_bufs_acked, xx;
    UINT16      ls;
    UINT16      full_sdus_xmitted;

    /* Receive sequence number does not ack anything for SREJ with P-bit set to zero */
    if ( (ctrl_word & L2CAP_FCR_S_FRAME_BIT)
            &&  ((ctrl_word & L2CAP_FCR_SUP_BITS) == (L2CAP_FCR_SUP_SREJ << L2CAP_FCR_SUP_SHIFT))
            &&  ((ctrl_word & L2CAP_FCR_P_BIT) == 0) ) {
        /* If anything still waiting for ack, restart the timer if it was stopped */
        if (!FUNC3(p_fcrb->waiting_for_ack_q)) {
            FUNC6(p_ccb);
		}

        return (TRUE);
    }

    /* Extract the receive sequence number from the control word */
    req_seq = (ctrl_word & L2CAP_FCR_REQ_SEQ_BITS) >> L2CAP_FCR_REQ_SEQ_BITS_SHIFT;

    num_bufs_acked = (req_seq - p_fcrb->last_rx_ack) & L2CAP_FCR_SEQ_MODULO;

    /* Verify the request sequence is in range before proceeding */
    if (num_bufs_acked > FUNC4(p_fcrb->waiting_for_ack_q)) {
        /* The channel is closed if ReqSeq is not in range */
        FUNC0 ("L2CAP eRTM Frame BAD Req_Seq - ctrl_word: 0x%04x  req_seq 0x%02x  last_rx_ack: 0x%02x  QCount: %u",
                             ctrl_word, req_seq, p_fcrb->last_rx_ack,
                             FUNC4(p_fcrb->waiting_for_ack_q));

        FUNC8 (p_ccb);
        return (FALSE);
    }

    p_fcrb->last_rx_ack = req_seq;

    /* Now we can release all acknowledged frames, and restart the retransmission timer if needed */
    if (num_bufs_acked != 0) {
        p_fcrb->num_tries = 0;
        full_sdus_xmitted = 0;

#if (L2CAP_ERTM_STATS == TRUE)
        FUNC5 (p_ccb, num_bufs_acked);
#endif

        for (xx = 0; xx < num_bufs_acked; xx++) {
            BT_HDR *p_tmp = (BT_HDR *)FUNC2(p_fcrb->waiting_for_ack_q, 0);
            ls = p_tmp->layer_specific & L2CAP_FCR_SAR_BITS;

            if ( (ls == L2CAP_FCR_UNSEG_SDU) || (ls == L2CAP_FCR_END_SDU) ) {
                full_sdus_xmitted++;
            }
            FUNC9(p_tmp);
        }

        /* If we are still in a wait_ack state, do not mess with the timer */
        if (!p_ccb->fcrb.wait_ack) {
            FUNC7 (p_ccb);
        }

        /* Check if we need to call the "packet_sent" callback */
        if ( (p_ccb->p_rcb) && (p_ccb->p_rcb->api.pL2CA_TxComplete_Cb) && (full_sdus_xmitted) ) {
            /* Special case for eRTM, if all packets sent, send 0xFFFF */
            if (FUNC3(p_fcrb->waiting_for_ack_q) &&
                FUNC3(p_ccb->xmit_hold_q)) {
                full_sdus_xmitted = 0xFFFF;
            }

            (*p_ccb->p_rcb->api.pL2CA_TxComplete_Cb)(p_ccb->local_cid, full_sdus_xmitted);
        }
    }

    /* If anything still waiting for ack, restart the timer if it was stopped */
    if (!FUNC3(p_fcrb->waiting_for_ack_q)) {
        FUNC6 (p_ccb);
    }

    return (TRUE);
}