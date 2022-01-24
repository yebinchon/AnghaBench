#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_3__* p_first_ccb; } ;
struct TYPE_6__ {int /*<<< orphan*/  handle; int /*<<< orphan*/  remote_bd_addr; TYPE_1__ ccb_queue; int /*<<< orphan*/  link_xmit_data_q; } ;
typedef  TYPE_2__ tL2C_LCB ;
struct TYPE_7__ {int /*<<< orphan*/  xmit_hold_q; struct TYPE_7__* p_next_ccb; } ;
typedef  TYPE_3__ tL2C_CCB ;
typedef  scalar_t__ tBTM_PM_MODE ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 scalar_t__ BTM_PM_STS_PENDING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ BTM_SUCCESS ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

BOOLEAN FUNC4 (tL2C_LCB *p_lcb)
{
    tBTM_PM_MODE     mode;
    tL2C_CCB    *p_ccb;
    BOOLEAN need_to_active = FALSE;

    /*
     * We only switch park to active only if we have unsent packets
     */
    if (FUNC3(p_lcb->link_xmit_data_q)) {
        for (p_ccb = p_lcb->ccb_queue.p_first_ccb; p_ccb; p_ccb = p_ccb->p_next_ccb) {
            if (!FUNC2(p_ccb->xmit_hold_q)) {
                need_to_active = TRUE;
                break;
            }
        }
    } else {
        need_to_active = TRUE;
    }

    /* if we have packets to send */
    if ( need_to_active ) {
        /* check power mode */
        if (FUNC0(p_lcb->remote_bd_addr, &mode) == BTM_SUCCESS) {
            if ( mode == BTM_PM_STS_PENDING ) {
                FUNC1 ("LCB(0x%x) is in PM pending state\n", p_lcb->handle);

                return TRUE;
            }
        }
    }
    return FALSE;
}