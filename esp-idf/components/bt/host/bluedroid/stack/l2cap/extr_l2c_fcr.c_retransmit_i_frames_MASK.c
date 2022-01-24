#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_10__ ;

/* Type definitions */
struct TYPE_19__ {scalar_t__ num_tries; int /*<<< orphan*/  waiting_for_ack_q; int /*<<< orphan*/  retrans_q; int /*<<< orphan*/  last_rx_ack; } ;
struct TYPE_17__ {scalar_t__ max_transmit; } ;
struct TYPE_18__ {TYPE_1__ fcr; } ;
struct TYPE_20__ {scalar_t__ local_cid; TYPE_3__ fcrb; TYPE_10__* p_lcb; TYPE_2__ peer_cfg; } ;
typedef  TYPE_4__ tL2C_CCB ;
typedef  int /*<<< orphan*/  list_t ;
typedef  int /*<<< orphan*/  list_node_t ;
typedef  int UINT8 ;
typedef  int UINT16 ;
struct TYPE_21__ {int offset; scalar_t__ layer_specific; scalar_t__ event; int /*<<< orphan*/  len; } ;
struct TYPE_16__ {int /*<<< orphan*/ * link_xmit_data_q; } ;
typedef  TYPE_5__ BT_HDR ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FIXED_QUEUE_MAX_TIMEOUT ; 
 int L2CAP_FCR_TX_SEQ_BITS ; 
 int L2CAP_FCR_TX_SEQ_BITS_SHIFT ; 
 int L2CAP_PKT_OVERHEAD ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int L2C_FCR_RETX_ALL_PKTS ; 
 int /*<<< orphan*/  FUNC3 (int,int*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC10 (TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_10__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const* FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_5__*) ; 

__attribute__((used)) static BOOLEAN FUNC20 (tL2C_CCB *p_ccb, UINT8 tx_seq)
{
    FUNC4(p_ccb != NULL);

    BT_HDR      *p_buf = NULL;
    UINT8       *p;
    UINT8       buf_seq;
    UINT16      ctrl_word;

    if ( (!FUNC8(p_ccb->fcrb.waiting_for_ack_q))
            &&  (p_ccb->peer_cfg.fcr.max_transmit != 0)
            &&  (p_ccb->fcrb.num_tries >= p_ccb->peer_cfg.fcr.max_transmit) ) {
        FUNC2 ("Max Tries Exceeded:  (last_acq: %d  CID: 0x%04x  num_tries: %u (max: %u) ack_q_count: %u",
                           p_ccb->fcrb.last_rx_ack, p_ccb->local_cid, p_ccb->fcrb.num_tries, p_ccb->peer_cfg.fcr.max_transmit,
                FUNC9(p_ccb->fcrb.waiting_for_ack_q));

        FUNC13 (p_ccb);
        return (FALSE);
    }

    /* tx_seq indicates whether to retransmit a specific sequence or all (if == L2C_FCR_RETX_ALL_PKTS) */
    list_t *list_ack = NULL;
    const list_node_t *node_ack = NULL;
    if (! FUNC8(p_ccb->fcrb.waiting_for_ack_q)) {
        list_ack = FUNC7(p_ccb->fcrb.waiting_for_ack_q);
        node_ack = FUNC14(list_ack);
    }
    if (tx_seq != L2C_FCR_RETX_ALL_PKTS) {
        /* If sending only one, the sequence number tells us which one. Look for it.
        */
        if (list_ack != NULL) {
            for ( ; node_ack != FUNC15(list_ack); node_ack = FUNC16(node_ack)) {
                p_buf = (BT_HDR *)FUNC17(node_ack);
                /* Get the old control word */
                p = ((UINT8 *) (p_buf+1)) + p_buf->offset + L2CAP_PKT_OVERHEAD;

                FUNC3 (ctrl_word, p);

                buf_seq = (ctrl_word & L2CAP_FCR_TX_SEQ_BITS) >> L2CAP_FCR_TX_SEQ_BITS_SHIFT;

                FUNC0 ("retransmit_i_frames()   cur seq: %u  looking for: %u", buf_seq, tx_seq);

                if (tx_seq == buf_seq) {
                    break;
				}
            }
        }

        if (!p_buf) {
            FUNC1 ("retransmit_i_frames() UNKNOWN seq: %u  q_count: %u",
                               tx_seq,
                               FUNC9(p_ccb->fcrb.waiting_for_ack_q));
            return (TRUE);
        }
    } else {
        // Iterate though list and flush the amount requested from
        // the transmit data queue that satisfy the layer and event conditions.
        for (const list_node_t *node = FUNC14(p_ccb->p_lcb->link_xmit_data_q);
                node != FUNC15(p_ccb->p_lcb->link_xmit_data_q);) {
            BT_HDR *p_buf = (BT_HDR *)FUNC17(node);
            node = FUNC16(node);

            /* Do not flush other CIDs or partial segments */
            if ((p_buf->layer_specific == 0) && (p_buf->event == p_ccb->local_cid)) {
                FUNC18(p_ccb->p_lcb->link_xmit_data_q, p_buf);
                FUNC19(p_buf);
            }
        }

        /* Also flush our retransmission queue */
        while (!FUNC8(p_ccb->fcrb.retrans_q)) {
            FUNC19(FUNC5(p_ccb->fcrb.retrans_q, 0));
		}

        if (list_ack != NULL) {
            node_ack = FUNC14(list_ack);
		}
    }

    if (list_ack != NULL) {
        while (node_ack != FUNC15(list_ack))
        {
            p_buf = (BT_HDR *)FUNC17(node_ack);
            node_ack = FUNC16(node_ack);

            BT_HDR *p_buf2 = FUNC10(p_buf, p_buf->offset, p_buf->len);
            if (p_buf2)
            {
                p_buf2->layer_specific = p_buf->layer_specific;

                FUNC6(p_ccb->fcrb.retrans_q, p_buf2, FIXED_QUEUE_MAX_TIMEOUT);
            }

            if ( (tx_seq != L2C_FCR_RETX_ALL_PKTS) || (p_buf2 == NULL) ) {
                break;
			}
        }
    }

    FUNC12 (p_ccb->p_lcb, NULL, NULL);

    if (FUNC9(p_ccb->fcrb.waiting_for_ack_q))
    {
        p_ccb->fcrb.num_tries++;
        FUNC11 (p_ccb);
    }

    return (TRUE);
}