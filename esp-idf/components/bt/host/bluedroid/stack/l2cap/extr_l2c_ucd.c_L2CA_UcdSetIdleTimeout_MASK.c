#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tL2C_LCB ;
struct TYPE_3__ {int /*<<< orphan*/  fixed_chnl_idle_tout; } ;
typedef  TYPE_1__ tL2C_CCB ;
typedef  int /*<<< orphan*/  UINT16 ;
typedef  int /*<<< orphan*/  BOOLEAN ;
typedef  int* BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  BT_TRANSPORT_BR_EDR ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  L2CAP_CONNECTIONLESS_CID ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int*,int /*<<< orphan*/ ) ; 

BOOLEAN FUNC4 ( BD_ADDR rem_bda, UINT16 timeout )
{
    tL2C_LCB        *p_lcb;
    tL2C_CCB        *p_ccb;

    FUNC0 ("L2CA_UcdSetIdleTimeout()  Timeout: 0x%04x  BDA: %08x%04x", timeout,
                     (rem_bda[0] << 24) + (rem_bda[1] << 16) + (rem_bda[2] << 8) + rem_bda[3],
                     (rem_bda[4] << 8) + rem_bda[5]);

    /* First, see if we already have a link to the remote */
    /* then find the channel control block. */
    if (((p_lcb = FUNC3 (rem_bda, BT_TRANSPORT_BR_EDR)) == NULL)
            || ((p_ccb = FUNC2 (p_lcb, L2CAP_CONNECTIONLESS_CID)) == NULL)) {
        FUNC1 ("L2CAP - no UCD channel");
        return (FALSE);
    } else {
        p_ccb->fixed_chnl_idle_tout = timeout;
        return (TRUE);
    }
}