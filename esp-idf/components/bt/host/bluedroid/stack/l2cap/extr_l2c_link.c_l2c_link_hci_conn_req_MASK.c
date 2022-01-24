#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ link_state; void* link_role; int /*<<< orphan*/  timer_entry; scalar_t__ in_use; } ;
typedef  TYPE_1__ tL2C_LCB ;
struct TYPE_7__ {TYPE_1__* lcb_pool; } ;
typedef  scalar_t__ BOOLEAN ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  BTU_TTYPE_L2CAP_LINK ; 
 int /*<<< orphan*/  BT_TRANSPORT_BR_EDR ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  HCI_ERR_CONNECTION_EXISTS ; 
 int /*<<< orphan*/  HCI_ERR_HOST_REJECT_DEVICE ; 
 int /*<<< orphan*/  HCI_ERR_HOST_REJECT_RESOURCES ; 
 void* HCI_ROLE_MASTER ; 
 void* HCI_ROLE_SLAVE ; 
 int /*<<< orphan*/  L2CAP_LINK_CONNECT_TOUT ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ LST_CONNECTING ; 
 scalar_t__ LST_CONNECT_HOLDING ; 
 scalar_t__ LST_DISCONNECTING ; 
 int MAX_L2CAP_LINKS ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__ l2cb ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC7 (TYPE_1__*) ; 

BOOLEAN FUNC8 (BD_ADDR bd_addr)
{
    tL2C_LCB        *p_lcb;
    tL2C_LCB        *p_lcb_cur;
    int             xx;
    BOOLEAN         no_links;

    /* See if we have a link control block for the remote device */
    p_lcb = FUNC6 (bd_addr, BT_TRANSPORT_BR_EDR);

    /* If we don't have one, create one and accept the connection. */
    if (!p_lcb) {
        p_lcb = FUNC5 (bd_addr, FALSE, BT_TRANSPORT_BR_EDR);
        if (!p_lcb) {
            FUNC3 (bd_addr, HCI_ERR_HOST_REJECT_RESOURCES);
            FUNC0 ("L2CAP failed to allocate LCB");
            return FALSE;
        }

        no_links = TRUE;

        /* If we already have connection, accept as a master */
        for (xx = 0, p_lcb_cur = &l2cb.lcb_pool[0]; xx < MAX_L2CAP_LINKS; xx++, p_lcb_cur++) {
            if (p_lcb_cur == p_lcb) {
                continue;
            }

            if (p_lcb_cur->in_use) {
                no_links = FALSE;
                p_lcb->link_role = HCI_ROLE_MASTER;
                break;
            }
        }

        if (no_links) {
            if (!FUNC1 (bd_addr)) {
                p_lcb->link_role = HCI_ROLE_SLAVE;
            } else {
                p_lcb->link_role = FUNC7(p_lcb);
            }
        }

        //counter_add("l2cap.conn.accept", 1);

        /* Tell the other side we accept the connection */
        FUNC2 (bd_addr, p_lcb->link_role);

        p_lcb->link_state = LST_CONNECTING;

        /* Start a timer waiting for connect complete */
        FUNC4 (&p_lcb->timer_entry, BTU_TTYPE_L2CAP_LINK, L2CAP_LINK_CONNECT_TOUT);
        return (TRUE);
    }

    /* We already had a link control block to the guy. Check what state it is in */
    if ((p_lcb->link_state == LST_CONNECTING) || (p_lcb->link_state == LST_CONNECT_HOLDING)) {
        /* Connection collision. Accept the connection anyways. */

        if (!FUNC1 (bd_addr)) {
            p_lcb->link_role = HCI_ROLE_SLAVE;
        } else {
            p_lcb->link_role = FUNC7(p_lcb);
        }

        //counter_add("l2cap.conn.accept", 1);
        FUNC2 (bd_addr, p_lcb->link_role);

        p_lcb->link_state = LST_CONNECTING;
        return (TRUE);
    } else if (p_lcb->link_state == LST_DISCONNECTING) {
        /* In disconnecting state, reject the connection. */
        //counter_add("l2cap.conn.reject.disconn", 1);
        FUNC3 (bd_addr, HCI_ERR_HOST_REJECT_DEVICE);
    } else {
        FUNC0("L2CAP got conn_req while connected (state:%d). Reject it\n",
                          p_lcb->link_state);
        /* Reject the connection with ACL Connection Already exist reason */
        //counter_add("l2cap.conn.reject.exists", 1);
        FUNC3 (bd_addr, HCI_ERR_CONNECTION_EXISTS);
    }
    return (FALSE);
}