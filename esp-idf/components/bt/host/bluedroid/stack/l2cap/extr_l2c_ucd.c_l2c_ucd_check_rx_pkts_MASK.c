#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tL2C_RCB ;
typedef  int /*<<< orphan*/  tL2C_LCB ;
struct TYPE_6__ {int /*<<< orphan*/  chnl_state; int /*<<< orphan*/ * p_rcb; int /*<<< orphan*/  fixed_chnl_idle_tout; void* remote_cid; void* local_cid; } ;
typedef  TYPE_1__ tL2C_CCB ;
typedef  int /*<<< orphan*/  BT_HDR ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  CST_OPEN ; 
 int /*<<< orphan*/  FALSE ; 
 void* L2CAP_CONNECTIONLESS_CID ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  L2CAP_UCD_CH_PRIORITY ; 
 int /*<<< orphan*/  L2CAP_UCD_IDLE_TIMEOUT ; 
 int /*<<< orphan*/  L2CEVT_L2CAP_DATA ; 
 int /*<<< orphan*/  L2C_UCD_RCB_ID ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

BOOLEAN FUNC7(tL2C_LCB  *p_lcb, BT_HDR *p_msg)
{
    tL2C_CCB   *p_ccb;
    tL2C_RCB   *p_rcb;

    if (((p_ccb = FUNC4 (p_lcb, L2CAP_CONNECTIONLESS_CID)) != NULL)
            || ((p_rcb = FUNC5 (L2C_UCD_RCB_ID)) != NULL)) {
        if (p_ccb == NULL) {
            /* Allocate a channel control block */
            if ((p_ccb = FUNC2 (p_lcb, 0)) == NULL) {
                FUNC0 ("L2CAP - no CCB for UCD reception");
                FUNC6 (p_msg);
                return TRUE;
            } else {
                /* Set CID for the connection */
                p_ccb->local_cid  = L2CAP_CONNECTIONLESS_CID;
                p_ccb->remote_cid = L2CAP_CONNECTIONLESS_CID;

                /* Set the default idle timeout value to use */
                p_ccb->fixed_chnl_idle_tout = L2CAP_UCD_IDLE_TIMEOUT;

                /* Set the default channel priority value to use */
                FUNC3 (p_ccb, L2CAP_UCD_CH_PRIORITY);

                /* Save registration info */
                p_ccb->p_rcb = p_rcb;

                p_ccb->chnl_state = CST_OPEN;
            }
        }
        FUNC1(p_ccb, L2CEVT_L2CAP_DATA, p_msg);
        return TRUE;
    } else {
        return FALSE;
    }
}