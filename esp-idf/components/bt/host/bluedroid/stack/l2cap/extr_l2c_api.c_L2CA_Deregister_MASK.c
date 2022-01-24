#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tL2C_RCB ;
struct TYPE_6__ {TYPE_3__* p_first_ccb; } ;
struct TYPE_7__ {scalar_t__ link_state; TYPE_1__ ccb_queue; scalar_t__ in_use; } ;
typedef  TYPE_2__ tL2C_LCB ;
struct TYPE_8__ {scalar_t__ chnl_state; int /*<<< orphan*/ * p_rcb; scalar_t__ in_use; } ;
typedef  TYPE_3__ tL2C_CCB ;
typedef  int /*<<< orphan*/  UINT16 ;
struct TYPE_9__ {TYPE_2__* lcb_pool; } ;

/* Variables and functions */
 scalar_t__ CST_W4_L2CAP_DISCONNECT_RSP ; 
 scalar_t__ CST_W4_L2CA_DISCONNECT_RSP ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  L2CEVT_L2CA_DISCONNECT_REQ ; 
 scalar_t__ LST_DISCONNECTING ; 
 int MAX_L2CAP_LINKS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_4__ l2cb ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4 (UINT16 psm)
{
    tL2C_RCB    *p_rcb;
    tL2C_CCB    *p_ccb;
    tL2C_LCB    *p_lcb;
    int         ii;


    if ((p_rcb = FUNC2 (psm)) != NULL) {
        p_lcb = &l2cb.lcb_pool[0];
        for (ii = 0; ii < MAX_L2CAP_LINKS; ii++, p_lcb++) {
            if (p_lcb->in_use) {
                if (((p_ccb = p_lcb->ccb_queue.p_first_ccb) == NULL)
                        || (p_lcb->link_state == LST_DISCONNECTING)) {
                    continue;
                }

                if ((p_ccb->in_use) &&
                        ((p_ccb->chnl_state == CST_W4_L2CAP_DISCONNECT_RSP) ||
                         (p_ccb->chnl_state == CST_W4_L2CA_DISCONNECT_RSP))) {
                    continue;
                }

                if (p_ccb->p_rcb == p_rcb) {
                    FUNC1 (p_ccb, L2CEVT_L2CA_DISCONNECT_REQ, NULL);
                }
            }
        }
        FUNC3 (p_rcb);
    } else {
        FUNC0 ("L2CAP - PSM: 0x%04x not found for deregistration", psm);
    }
}