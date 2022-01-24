#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  tL2C_LCB ;
typedef  int /*<<< orphan*/  tL2C_CCB ;
typedef  int /*<<< orphan*/  tL2CAP_CHNL_PRIORITY ;
typedef  int /*<<< orphan*/  BOOLEAN ;
typedef  int* BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  BT_TRANSPORT_BR_EDR ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  L2CAP_CONNECTIONLESS_CID ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int*,int /*<<< orphan*/ ) ; 

BOOLEAN FUNC5 ( BD_ADDR rem_bda, tL2CAP_CHNL_PRIORITY priority )
{
    tL2C_LCB        *p_lcb;
    tL2C_CCB        *p_ccb;

    FUNC0 ("L2CA_UCDSetTxPriority()  priority: 0x%02x  BDA: %08x%04x", priority,
                     (rem_bda[0] << 24) + (rem_bda[1] << 16) + (rem_bda[2] << 8) + rem_bda[3],
                     (rem_bda[4] << 8) + rem_bda[5]);

    if ((p_lcb = FUNC4 (rem_bda, BT_TRANSPORT_BR_EDR)) == NULL) {
        FUNC1 ("L2CAP - no LCB for L2CA_UCDSetTxPriority");
        return (FALSE);
    }

    /* Find the channel control block */
    if ((p_ccb = FUNC3 (p_lcb, L2CAP_CONNECTIONLESS_CID)) == NULL) {
        FUNC1 ("L2CAP - no CCB for L2CA_UCDSetTxPriority");
        return (FALSE);
    }

    /* it will update the order of CCB in LCB by priority and update round robin service variables */
    FUNC2 (p_ccb, priority);

    return (TRUE);
}