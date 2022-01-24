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
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/ * p_first_ccb; } ;
struct TYPE_14__ {scalar_t__ transport; scalar_t__ sent_not_acked; scalar_t__ link_state; scalar_t__ completed_packets; int /*<<< orphan*/ * le_sec_pending_q; int /*<<< orphan*/  remote_bd_addr; int /*<<< orphan*/  (* p_echo_rsp_cb ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/ * link_xmit_data_q; TYPE_1__ ccb_queue; TYPE_3__* p_hcit_rcv_acl; int /*<<< orphan*/  upda_con_timer; int /*<<< orphan*/  info_timer_entry; int /*<<< orphan*/  timer_entry; void* is_bonding; void* in_use; } ;
typedef  TYPE_2__ tL2C_LCB ;
typedef  int /*<<< orphan*/  tL2C_CCB ;
typedef  int /*<<< orphan*/  (* tL2CA_ECHO_RSP_CB ) (int /*<<< orphan*/ ) ;
struct TYPE_15__ {int /*<<< orphan*/  p_ref_data; int /*<<< orphan*/  (* p_callback ) (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_3__ tL2CAP_SEC_DATA ;
struct TYPE_12__ {scalar_t__ controller_le_xmit_window; scalar_t__ num_lm_ble_bufs; scalar_t__ controller_xmit_window; scalar_t__ num_lm_acl_bufs; int num_ble_links_active; int num_links_active; void* is_ble_connecting; int /*<<< orphan*/  ble_connecting_bda; } ;
typedef  int /*<<< orphan*/  TIMER_LIST_ENT ;
typedef  TYPE_3__ BT_HDR ;

/* Variables and functions */
 int /*<<< orphan*/  BD_ADDR_LEN ; 
 int /*<<< orphan*/  BTM_DEV_RESET ; 
 scalar_t__ BT_TRANSPORT_BR_EDR ; 
 scalar_t__ BT_TRANSPORT_LE ; 
 void* FALSE ; 
 int /*<<< orphan*/  FIXED_QUEUE_MAX_TIMEOUT ; 
 int /*<<< orphan*/  L2CAP_PING_RESULT_NO_LINK ; 
 scalar_t__ LST_CONNECTED ; 
 scalar_t__ LST_DISCONNECTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 TYPE_10__ l2cb ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC20 (tL2C_LCB *p_lcb)
{
    tL2C_CCB    *p_ccb;

    p_lcb->in_use     = FALSE;
    p_lcb->is_bonding = FALSE;

    /* Stop and release timers */
    FUNC2 (&p_lcb->timer_entry);
    FUNC16(&p_lcb->timer_entry, 0, sizeof(TIMER_LIST_ENT));
    FUNC2 (&p_lcb->info_timer_entry);
    FUNC16(&p_lcb->info_timer_entry, 0, sizeof(TIMER_LIST_ENT));
    FUNC2(&p_lcb->upda_con_timer);
    FUNC16(&p_lcb->upda_con_timer, 0, sizeof(TIMER_LIST_ENT));

    /* Release any unfinished L2CAP packet on this link */
    if (p_lcb->p_hcit_rcv_acl) {
        FUNC17(p_lcb->p_hcit_rcv_acl);
        p_lcb->p_hcit_rcv_acl = NULL;
    }

#if BTM_SCO_INCLUDED == TRUE
#if (BLE_INCLUDED == TRUE)
    if (p_lcb->transport == BT_TRANSPORT_BR_EDR)
#endif
    {
        /* Release all SCO links */
        FUNC1(p_lcb->remote_bd_addr);
    }
#endif

    if (p_lcb->sent_not_acked > 0) {
#if (BLE_INCLUDED == TRUE)
        if (p_lcb->transport == BT_TRANSPORT_LE) {
            l2cb.controller_le_xmit_window += p_lcb->sent_not_acked;
            if (l2cb.controller_le_xmit_window > l2cb.num_lm_ble_bufs) {
                l2cb.controller_le_xmit_window = l2cb.num_lm_ble_bufs;
            }
        } else
#endif
        {
            l2cb.controller_xmit_window += p_lcb->sent_not_acked;
            if (l2cb.controller_xmit_window > l2cb.num_lm_acl_bufs) {
                l2cb.controller_xmit_window = l2cb.num_lm_acl_bufs;
            }
        }
    }

#if (BLE_INCLUDED == TRUE)
    // Reset BLE connecting flag only if the address matches
    if (!FUNC15(l2cb.ble_connecting_bda, p_lcb->remote_bd_addr, BD_ADDR_LEN)) {
        l2cb.is_ble_connecting = FALSE;
    }
#endif

#if (L2CAP_NUM_FIXED_CHNLS > 0)
    l2cu_process_fixed_disc_cback(p_lcb);
#endif

    /* Ensure no CCBs left on this LCB */
    for (p_ccb = p_lcb->ccb_queue.p_first_ccb; p_ccb; p_ccb = p_lcb->ccb_queue.p_first_ccb) {
        FUNC10 (p_ccb);
    }

    /* Tell BTM Acl management the link was removed */
    if ((p_lcb->link_state == LST_CONNECTED) || (p_lcb->link_state == LST_DISCONNECTING)) {
#if (BLE_INCLUDED == TRUE)
        FUNC0 (p_lcb->remote_bd_addr, p_lcb->transport);
#else
        btm_acl_removed (p_lcb->remote_bd_addr, BT_TRANSPORT_BR_EDR);
#endif
    }

    /* Release any held buffers */
    if (p_lcb->link_xmit_data_q) {
        while (!FUNC13(p_lcb->link_xmit_data_q)) {
            BT_HDR *p_buf = FUNC12(p_lcb->link_xmit_data_q);
            FUNC14(p_lcb->link_xmit_data_q, p_buf);
            FUNC17(p_buf);
        }
        FUNC11(p_lcb->link_xmit_data_q);
        p_lcb->link_xmit_data_q = NULL;
    }

#if (L2CAP_UCD_INCLUDED == TRUE)
    /* clean up any security pending UCD */
    FUNC8(p_lcb);
#endif

#if BLE_INCLUDED == TRUE
    /* Re-adjust flow control windows make sure it does not go negative */
    if (p_lcb->transport == BT_TRANSPORT_LE) {
        if (l2cb.num_ble_links_active >= 1) {
            l2cb.num_ble_links_active--;
        }

        FUNC6();
    } else
#endif
    {
        if (l2cb.num_links_active >= 1) {
            l2cb.num_links_active--;
        }

        FUNC7();
    }

    /* Check for ping outstanding */
    if (p_lcb->p_echo_rsp_cb) {
        tL2CA_ECHO_RSP_CB *p_cb = &p_lcb->p_echo_rsp_cb;

        /* Zero out the callback in case app immediately calls us again */
        p_lcb->p_echo_rsp_cb = NULL;

        (*p_cb) (L2CAP_PING_RESULT_NO_LINK);
    }

#if (BLE_INCLUDED == TRUE)
	/* Check and release all the LE COC connections waiting for security */
    if (p_lcb->le_sec_pending_q)
    {
        while (!FUNC5(p_lcb->le_sec_pending_q))
        {
            tL2CAP_SEC_DATA *p_buf = (tL2CAP_SEC_DATA*) FUNC3(p_lcb->le_sec_pending_q, FIXED_QUEUE_MAX_TIMEOUT);
            if (p_buf->p_callback) {
                p_buf->p_callback(p_lcb->remote_bd_addr, p_lcb->transport, p_buf->p_ref_data, BTM_DEV_RESET);
            }
            FUNC17(p_buf);
        }
        FUNC4(p_lcb->le_sec_pending_q, NULL);
        p_lcb->le_sec_pending_q = NULL;
    }
#endif  ///BLE_INCLUDED == TRUE

#if (C2H_FLOW_CONTROL_INCLUDED == TRUE)
    p_lcb->completed_packets = 0;
#endif ///C2H_FLOW_CONTROL_INCLUDED == TRUE

}