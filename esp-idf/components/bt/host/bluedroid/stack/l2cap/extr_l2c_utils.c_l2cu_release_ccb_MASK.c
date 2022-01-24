#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ psm; scalar_t__ real_psm; } ;
typedef  TYPE_3__ tL2C_RCB ;
struct TYPE_14__ {int /*<<< orphan*/  p_first_ccb; } ;
struct TYPE_16__ {scalar_t__ link_state; TYPE_2__ ccb_queue; scalar_t__ in_use; int /*<<< orphan*/  remote_bd_addr; } ;
typedef  TYPE_4__ tL2C_LCB ;
struct TYPE_13__ {int /*<<< orphan*/ * waiting_for_ack_q; int /*<<< orphan*/ * retrans_q; int /*<<< orphan*/ * srej_rcv_hold_q; } ;
struct TYPE_17__ {scalar_t__ local_cid; int should_free_rcb; scalar_t__ in_use; struct TYPE_17__* p_next_ccb; struct TYPE_17__* p_prev_ccb; TYPE_4__* p_lcb; TYPE_1__ fcrb; int /*<<< orphan*/ * xmit_hold_q; int /*<<< orphan*/  timer_entry; TYPE_3__* p_rcb; } ;
typedef  TYPE_5__ tL2C_CCB ;
struct TYPE_12__ {TYPE_5__* p_free_ccb_last; TYPE_5__* p_free_ccb_first; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ L2CAP_BASE_APPL_CID ; 
 scalar_t__ L2CAP_CONNECTIONLESS_CID ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__) ; 
 scalar_t__ LST_CONNECTED ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_10__ l2cb ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  osi_free_func ; 

void FUNC10 (tL2C_CCB *p_ccb)
{
    tL2C_LCB    *p_lcb = p_ccb->p_lcb;
    tL2C_RCB    *p_rcb = p_ccb->p_rcb;

    FUNC0 ("l2cu_release_ccb: cid 0x%04x  in_use: %u", p_ccb->local_cid, p_ccb->in_use);

    /* If already released, could be race condition */
    if (!p_ccb->in_use) {
        return;
    }
#if (SDP_INCLUDED == TRUE)
    if (p_rcb && (p_rcb->psm != p_rcb->real_psm)) {
        FUNC1(p_rcb->psm);
    }
#endif  ///SMP_INCLUDED == TRUE
    if (p_ccb->should_free_rcb) {
        FUNC9(p_rcb);
        p_ccb->p_rcb = NULL;
        p_ccb->should_free_rcb = false;
    }

    if (p_lcb) {
        FUNC2 (p_lcb->remote_bd_addr);
    }

    /* Stop and free the timer */
    FUNC3 (&p_ccb->timer_entry);

    FUNC4(p_ccb->xmit_hold_q, osi_free_func);
    p_ccb->xmit_hold_q = NULL;
#if (CLASSIC_BT_INCLUDED == TRUE)
    FUNC4(p_ccb->fcrb.srej_rcv_hold_q, osi_free_func);
    FUNC4(p_ccb->fcrb.retrans_q, osi_free_func);
    FUNC4(p_ccb->fcrb.waiting_for_ack_q, osi_free_func);
    p_ccb->fcrb.srej_rcv_hold_q = NULL;
    p_ccb->fcrb.retrans_q = NULL;
    p_ccb->fcrb.waiting_for_ack_q = NULL;
#endif  ///CLASSIC_BT_INCLUDED == TRUE


#if (CLASSIC_BT_INCLUDED == TRUE)
    FUNC5 (p_ccb);
#endif  ///CLASSIC_BT_INCLUDED == TRUE
    /* Channel may not be assigned to any LCB if it was just pre-reserved */
    if ( (p_lcb) &&
            ( (p_ccb->local_cid >= L2CAP_BASE_APPL_CID)
#if (L2CAP_UCD_INCLUDED == TRUE)
              || (p_ccb->local_cid == L2CAP_CONNECTIONLESS_CID)
#endif
            )
       ) {
        FUNC7 (p_ccb);

        /* Delink the CCB from the LCB */
        p_ccb->p_lcb = NULL;
    }

    /* Put the CCB back on the free pool */
    if (!l2cb.p_free_ccb_first) {
        l2cb.p_free_ccb_first = p_ccb;
        l2cb.p_free_ccb_last  = p_ccb;
        p_ccb->p_next_ccb     = NULL;
        p_ccb->p_prev_ccb     = NULL;
    } else {
        p_ccb->p_next_ccb  = NULL;
        p_ccb->p_prev_ccb  = l2cb.p_free_ccb_last;
        l2cb.p_free_ccb_last->p_next_ccb = p_ccb;
        l2cb.p_free_ccb_last  = p_ccb;
    }

    /* Flag as not in use */
    p_ccb->in_use = FALSE;

    /* If no channels on the connection, start idle timeout */
    if ((p_lcb) && p_lcb->in_use && (p_lcb->link_state == LST_CONNECTED)) {
        if (!p_lcb->ccb_queue.p_first_ccb) {
            FUNC8 (p_lcb);
        } else {
            /* Link is still active, adjust channel quotas. */
            FUNC6 ();
        }
    }
}