#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_14__ ;

/* Type definitions */
struct TYPE_16__ {TYPE_4__* p_first_ccb; } ;
struct TYPE_17__ {scalar_t__ link_state; TYPE_1__ ccb_queue; scalar_t__ disc_reason; int /*<<< orphan*/  handle; int /*<<< orphan*/  timer_entry; scalar_t__ p_echo_rsp_cb; scalar_t__ is_bonding; int /*<<< orphan*/  link_role; } ;
typedef  TYPE_2__ tL2C_LCB ;
struct TYPE_18__ {scalar_t__ status; int /*<<< orphan*/  bd_addr; } ;
typedef  TYPE_3__ tL2C_CONN_INFO ;
struct TYPE_19__ {struct TYPE_19__* p_next_ccb; } ;
typedef  TYPE_4__ tL2C_CCB ;
struct TYPE_20__ {int /*<<< orphan*/ * sec_bd_name; int /*<<< orphan*/ * dev_class; } ;
typedef  TYPE_5__ tBTM_SEC_DEV_REC ;
typedef  scalar_t__ UINT8 ;
typedef  int /*<<< orphan*/  UINT16 ;
struct TYPE_15__ {int /*<<< orphan*/  btm_def_link_super_tout; } ;
typedef  int /*<<< orphan*/  BOOLEAN ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  BD_ADDR_LEN ; 
 int /*<<< orphan*/  BTM_BLI_PAGE_DONE_EVT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BTU_TTYPE_L2CAP_LINK ; 
 int /*<<< orphan*/  BT_TRANSPORT_BR_EDR ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ HCI_ERR_CONNECTION_EXISTS ; 
 scalar_t__ HCI_ERR_MAX_NUM_OF_CONNECTIONS ; 
 int /*<<< orphan*/  HCI_INVALID_HANDLE ; 
 scalar_t__ HCI_SUCCESS ; 
 int /*<<< orphan*/  L2CAP_ECHO_RSP_TOUT ; 
 int /*<<< orphan*/  L2CAP_EXTENDED_FEATURES_INFO_TYPE ; 
 int /*<<< orphan*/  L2CAP_LINK_STARTUP_TOUT ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  L2CEVT_LP_CONNECT_CFM ; 
 int /*<<< orphan*/  L2CEVT_LP_CONNECT_CFM_NEG ; 
 scalar_t__ LST_CONNECTED ; 
 scalar_t__ LST_CONNECTING ; 
 scalar_t__ LST_CONNECT_HOLDING ; 
 scalar_t__ LST_DISCONNECTING ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_14__ btm_cb ; 
 TYPE_5__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

BOOLEAN FUNC19 (UINT8 status, UINT16 handle, BD_ADDR p_bda)
{
    tL2C_CONN_INFO       ci;
    tL2C_LCB            *p_lcb;
#if (CLASSIC_BT_INCLUDED == TRUE)
    tL2C_CCB            *p_ccb;
#endif  ///CLASSIC_BT_INCLUDED == TRUE
    tBTM_SEC_DEV_REC    *p_dev_info = NULL;

    FUNC4 (BTM_BLI_PAGE_DONE_EVT);

    /* Save the parameters */
    ci.status       = status;
    FUNC18 (ci.bd_addr, p_bda, BD_ADDR_LEN);

    /* See if we have a link control block for the remote device */
    p_lcb = FUNC12 (ci.bd_addr, BT_TRANSPORT_BR_EDR);

    /* If we don't have one, this is an error */
    if (!p_lcb) {
        FUNC2 ("L2CAP got conn_comp for unknown BD_ADDR\n");
        return (FALSE);
    }

    if (p_lcb->link_state != LST_CONNECTING) {
        FUNC1 ("L2CAP got conn_comp in bad state: %d  status: 0x%d\n", p_lcb->link_state, status);

        if (status != HCI_SUCCESS) {
            FUNC9 (p_lcb->handle, status);
        }

        return (FALSE);
    }

    /* Save the handle */
    p_lcb->handle = handle;

    if (ci.status == HCI_SUCCESS) {
        /* Connected OK. Change state to connected */
        p_lcb->link_state = LST_CONNECTED;
        //counter_add("l2cap.conn.ok", 1);

        /* Get the peer information if the l2cap flow-control/rtrans is supported */
        FUNC16 (p_lcb, L2CAP_EXTENDED_FEATURES_INFO_TYPE);

        /* Tell BTM Acl management about the link */
        if ((p_dev_info = FUNC5 (p_bda)) != NULL) {
            FUNC3 (ci.bd_addr, p_dev_info->dev_class,
                             p_dev_info->sec_bd_name, handle,
                             p_lcb->link_role, BT_TRANSPORT_BR_EDR);
        } else {
            FUNC3 (ci.bd_addr, NULL, NULL, handle, p_lcb->link_role, BT_TRANSPORT_BR_EDR);
        }

        FUNC0 (ci.bd_addr, btm_cb.btm_def_link_super_tout);

        /* If dedicated bonding do not process any further */
        if (p_lcb->is_bonding) {
            if (FUNC17(handle)) {
                return (TRUE);
            }
        }

        /* Update the timeouts in the hold queue */
        FUNC10(FALSE);

        FUNC7 (&p_lcb->timer_entry);
#if (CLASSIC_BT_INCLUDED == TRUE)
        /* For all channels, send the event through their FSMs */
        for (p_ccb = p_lcb->ccb_queue.p_first_ccb; p_ccb; p_ccb = p_ccb->p_next_ccb) {
            FUNC8 (p_ccb, L2CEVT_LP_CONNECT_CFM, &ci);
        }
#endif  ///CLASSIC_BT_INCLUDED == TRUE
        if (p_lcb->p_echo_rsp_cb) {
            FUNC15 (p_lcb, NULL, 0);
            FUNC6 (&p_lcb->timer_entry, BTU_TTYPE_L2CAP_LINK, L2CAP_ECHO_RSP_TOUT);
        } else if (!p_lcb->ccb_queue.p_first_ccb) {
            FUNC6 (&p_lcb->timer_entry, BTU_TTYPE_L2CAP_LINK, L2CAP_LINK_STARTUP_TOUT);
        }
    }
    /* Max number of acl connections.                          */
    /* If there's an lcb disconnecting set this one to holding */
    else if ((ci.status == HCI_ERR_MAX_NUM_OF_CONNECTIONS) && FUNC13()) {
        p_lcb->link_state = LST_CONNECT_HOLDING;
        p_lcb->handle = HCI_INVALID_HANDLE;
    } else {
        /* Just in case app decides to try again in the callback context */
        p_lcb->link_state = LST_DISCONNECTING;
#if(CLASSIC_BT_INCLUDED == TRUE)
        /* Connection failed. For all channels, send the event through */
        /* their FSMs. The CCBs should remove themselves from the LCB  */
        for (p_ccb = p_lcb->ccb_queue.p_first_ccb; p_ccb; ) {
            tL2C_CCB *pn = p_ccb->p_next_ccb;

            FUNC8 (p_ccb, L2CEVT_LP_CONNECT_CFM_NEG, &ci);

            p_ccb = pn;
        }
#endif ///CLASSIC_BT_INCLUDED == TRUE
        p_lcb->disc_reason = status;
        /* Release the LCB */
        if (p_lcb->ccb_queue.p_first_ccb == NULL) {
            FUNC14 (p_lcb);
        } else {                          /* there are any CCBs remaining */
            if (ci.status == HCI_ERR_CONNECTION_EXISTS) {
                /* we are in collision situation, wait for connecttion request from controller */
                p_lcb->link_state = LST_CONNECTING;
            } else {
                FUNC11(p_lcb, BT_TRANSPORT_BR_EDR);
            }
        }
    }
    return (TRUE);
}