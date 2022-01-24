#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ in_use; } ;
struct TYPE_13__ {size_t next_seq_expected; size_t last_ack_sent; TYPE_11__ ack_timer; int /*<<< orphan*/  wait_ack; int /*<<< orphan*/ * s_frames_sent; } ;
struct TYPE_14__ {scalar_t__ chnl_state; size_t remote_cid; scalar_t__ bypass_fcs; int /*<<< orphan*/  local_cid; TYPE_1__ fcrb; int /*<<< orphan*/  p_lcb; int /*<<< orphan*/  in_use; } ;
typedef  TYPE_2__ tL2C_CCB ;
typedef  int /*<<< orphan*/  UINT8 ;
typedef  size_t UINT16 ;
struct TYPE_15__ {int offset; size_t len; int /*<<< orphan*/  layer_specific; } ;
typedef  TYPE_3__ BT_HDR ;

/* Variables and functions */
 scalar_t__ CST_OPEN ; 
 int HCI_DATA_PREAMBLE_SIZE ; 
 scalar_t__ L2CAP_BYPASS_FCS ; 
 int /*<<< orphan*/  L2CAP_CMD_BUF_SIZE ; 
 size_t L2CAP_FCR_F_BIT ; 
 size_t L2CAP_FCR_F_BIT_SHIFT ; 
 size_t L2CAP_FCR_OVERHEAD ; 
 size_t L2CAP_FCR_P_BIT ; 
 size_t L2CAP_FCR_P_BIT_SHIFT ; 
 size_t L2CAP_FCR_REQ_SEQ_BITS ; 
 size_t L2CAP_FCR_REQ_SEQ_BITS_SHIFT ; 
 size_t L2CAP_FCR_SUP_BITS ; 
 size_t L2CAP_FCR_SUP_SHIFT ; 
 size_t L2CAP_FCR_S_FRAME_BIT ; 
 size_t L2CAP_FCS_LEN ; 
 int /*<<< orphan*/  L2CAP_NON_FLUSHABLE_PKT ; 
 size_t L2CAP_PKT_OVERHEAD ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,...) ; 
 int /*<<< orphan*/ * SUP_types ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 size_t FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,TYPE_2__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

void FUNC12 (tL2C_CCB *p_ccb, UINT16 function_code, UINT16 pf_bit)
{
    FUNC4(p_ccb != NULL);
    BT_HDR      *p_buf;
    UINT8       *p;
    UINT16      ctrl_word;
    UINT16      fcs;

    if ((!p_ccb->in_use) || (p_ccb->chnl_state != CST_OPEN)) {
        return;
    }

#if (L2CAP_ERTM_STATS == TRUE)
    p_ccb->fcrb.s_frames_sent[function_code]++;
#endif

    if (pf_bit == L2CAP_FCR_P_BIT) {
        p_ccb->fcrb.wait_ack = TRUE;

        FUNC7 (p_ccb);         /* Restart the monitor timer */
        FUNC6 (p_ccb);
    }

    /* Create the control word to use */
    ctrl_word = (function_code << L2CAP_FCR_SUP_SHIFT) | L2CAP_FCR_S_FRAME_BIT;
    ctrl_word |= (p_ccb->fcrb.next_seq_expected << L2CAP_FCR_REQ_SEQ_BITS_SHIFT);
    ctrl_word |= pf_bit;

    if ((p_buf = (BT_HDR *)FUNC11(L2CAP_CMD_BUF_SIZE)) != NULL) {
        p_buf->offset = HCI_DATA_PREAMBLE_SIZE;
        p_buf->len    = L2CAP_PKT_OVERHEAD + L2CAP_FCR_OVERHEAD;

        /* Set the pointer to the beginning of the data */
        p = (UINT8 *)(p_buf + 1) + p_buf->offset;

        /* Put in the L2CAP header */
        FUNC3 (p, L2CAP_FCR_OVERHEAD + L2CAP_FCS_LEN);
        FUNC3 (p, p_ccb->remote_cid);
        FUNC3 (p, ctrl_word);

        /* Compute the FCS and add to the end of the buffer if not bypassed */
        if (p_ccb->bypass_fcs != L2CAP_BYPASS_FCS) {
            fcs = FUNC8 (p_buf);

            FUNC3 (p, fcs);
            p_buf->len += L2CAP_FCS_LEN;
        } else { /* rewrite the length without FCS length */
            p -= 6;
            FUNC3 (p, L2CAP_FCR_OVERHEAD);
        }

        /* Now, the HCI transport header */
        p_buf->layer_specific = L2CAP_NON_FLUSHABLE_PKT;
        FUNC10 (p_buf, p_ccb);

#if BT_TRACE_VERBOSE == TRUE
        if ((((ctrl_word & L2CAP_FCR_SUP_BITS) >> L2CAP_FCR_SUP_SHIFT) == 1)
                || (((ctrl_word & L2CAP_FCR_SUP_BITS) >> L2CAP_FCR_SUP_SHIFT) == 3)) {
            FUNC2 ("L2CAP eRTM Tx S-frame  CID: 0x%04x  ctrlword: 0x%04x  Type: %s  ReqSeq: %u  P: %u  F: %u",
                                 p_ccb->local_cid, ctrl_word,
                                 SUP_types[(ctrl_word & L2CAP_FCR_SUP_BITS) >> L2CAP_FCR_SUP_SHIFT],
                                 (ctrl_word & L2CAP_FCR_REQ_SEQ_BITS) >> L2CAP_FCR_REQ_SEQ_BITS_SHIFT,
                                 (ctrl_word & L2CAP_FCR_P_BIT) >> L2CAP_FCR_P_BIT_SHIFT,
                                 (ctrl_word & L2CAP_FCR_F_BIT) >> L2CAP_FCR_F_BIT_SHIFT);
            FUNC2 ("                  Buf Len: %u", p_buf->len);
        } else {
            FUNC1 ("L2CAP eRTM Tx S-frame  CID: 0x%04x  ctrlword: 0x%04x  Type: %s  ReqSeq: %u  P: %u  F: %u",
                               p_ccb->local_cid, ctrl_word,
                               SUP_types[(ctrl_word & L2CAP_FCR_SUP_BITS) >> L2CAP_FCR_SUP_SHIFT],
                               (ctrl_word & L2CAP_FCR_REQ_SEQ_BITS) >> L2CAP_FCR_REQ_SEQ_BITS_SHIFT,
                               (ctrl_word & L2CAP_FCR_P_BIT) >> L2CAP_FCR_P_BIT_SHIFT,
                               (ctrl_word & L2CAP_FCR_F_BIT) >> L2CAP_FCR_F_BIT_SHIFT);
            FUNC1 ("                  Buf Len: %u", p_buf->len);
        }
#endif  /* BT_TRACE_VERBOSE */

        FUNC9 (p_ccb->p_lcb, NULL, p_buf);

        p_ccb->fcrb.last_ack_sent = p_ccb->fcrb.next_seq_expected;

        if (p_ccb->fcrb.ack_timer.in_use) {
            FUNC5 (&p_ccb->fcrb.ack_timer);
        }
    } else {
        FUNC0 ("l2c_fcr_send_S_frame(No Resources) cid 0x%04x, Type: 0x%4x",
                           p_ccb->local_cid, function_code);
    }
}