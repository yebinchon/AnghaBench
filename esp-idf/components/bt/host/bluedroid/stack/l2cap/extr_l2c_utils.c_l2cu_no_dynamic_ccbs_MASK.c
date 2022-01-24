#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int idle_timeout; int /*<<< orphan*/  timer_entry; void* link_state; int /*<<< orphan*/  handle; scalar_t__ is_bonding; TYPE_1__** p_fixed_ccbs; } ;
typedef  TYPE_2__ tL2C_LCB ;
typedef  scalar_t__ tBTM_STATUS ;
typedef  int UINT16 ;
struct TYPE_5__ {int fixed_chnl_idle_tout; } ;

/* Variables and functions */
 scalar_t__ BTM_CMD_STARTED ; 
 scalar_t__ BTM_SUCCESS ; 
 int /*<<< orphan*/  BTU_TTYPE_L2CAP_LINK ; 
 int BT_1SEC_TIMEOUT ; 
 int /*<<< orphan*/  HCI_ERR_PEER_USER ; 
 int L2CAP_LINK_DISCONNECT_TOUT ; 
 int L2CAP_NUM_FIXED_CHNLS ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 void* LST_DISCONNECTING ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

void FUNC6 (tL2C_LCB *p_lcb)
{
#if (SMP_INCLUDED == TRUE)
    tBTM_STATUS     rc;
#endif  ///SMP_INCLUDED == TRUE
    UINT16          timeout = p_lcb->idle_timeout;

#if (L2CAP_NUM_FIXED_CHNLS > 0)
    int         xx;

    for (xx = 0; xx < L2CAP_NUM_FIXED_CHNLS; xx++) {
        if ( (p_lcb->p_fixed_ccbs[xx] != NULL) && (p_lcb->p_fixed_ccbs[xx]->fixed_chnl_idle_tout > timeout) ) {
            timeout = p_lcb->p_fixed_ccbs[xx]->fixed_chnl_idle_tout;
        }
    }
#endif

    /* If the link is pairing, do not mess with the timeouts */
    if (p_lcb->is_bonding) {
        return;
    }

    if (timeout == 0) {
        FUNC0 ("l2cu_no_dynamic_ccbs() IDLE timer 0, disconnecting link");
#if (SMP_INCLUDED == TRUE)
        rc = FUNC1 (p_lcb->handle, HCI_ERR_PEER_USER);
        if (rc == BTM_CMD_STARTED) {
            FUNC5(p_lcb);
            p_lcb->link_state = LST_DISCONNECTING;
            timeout = L2CAP_LINK_DISCONNECT_TOUT;
        } else if (rc == BTM_SUCCESS) {
            FUNC5(p_lcb);
            /* BTM SEC will make sure that link is release (probably after pairing is done) */
            p_lcb->link_state = LST_DISCONNECTING;
            timeout = 0xFFFF;
        } else if ( (p_lcb->is_bonding)
                    &&   (FUNC2 (p_lcb->handle, HCI_ERR_PEER_USER)) ) {
            FUNC5(p_lcb);
            p_lcb->link_state = LST_DISCONNECTING;
            timeout = L2CAP_LINK_DISCONNECT_TOUT;
        } else {
            /* probably no buffer to send disconnect */
            timeout = BT_1SEC_TIMEOUT;
        }
#else
        if (btsnd_hcic_disconnect (p_lcb->handle, HCI_ERR_PEER_USER)) {
            l2cu_process_fixed_disc_cback(p_lcb);
            p_lcb->link_state = LST_DISCONNECTING;
            timeout = L2CAP_LINK_DISCONNECT_TOUT;
        } else {
            timeout = BT_1SEC_TIMEOUT;
        }
#endif  ///SMP_INCLUDED == TRUE

    }

    if (timeout != 0xFFFF) {
        FUNC0 ("l2cu_no_dynamic_ccbs() starting IDLE timeout: %d", timeout);
        FUNC3 (&p_lcb->timer_entry, BTU_TTYPE_L2CAP_LINK, timeout);
    } else {
        FUNC4(&p_lcb->timer_entry);
    }
}