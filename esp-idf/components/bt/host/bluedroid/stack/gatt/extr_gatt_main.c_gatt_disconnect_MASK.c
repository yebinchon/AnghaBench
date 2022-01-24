#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ att_lcid; int /*<<< orphan*/  peer_bda; } ;
typedef  TYPE_1__ tGATT_TCB ;
typedef  scalar_t__ tGATT_CH_STATE ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ GATT_CH_CLOSING ; 
 scalar_t__ GATT_CH_OPEN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ L2CAP_ATT_CID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__) ; 

BOOLEAN FUNC6 (tGATT_TCB *p_tcb)
{
    BOOLEAN             ret = FALSE;
    tGATT_CH_STATE      ch_state;
    FUNC0 ("gatt_disconnect ");

    if (p_tcb != NULL) {
        ret = TRUE;
        if ( (ch_state = FUNC4(p_tcb)) != GATT_CH_CLOSING ) {
            if (p_tcb->att_lcid == L2CAP_ATT_CID) {
                if (ch_state == GATT_CH_OPEN) {
                    /* only LCB exist between remote device and local */
                    ret = FUNC3 (L2CAP_ATT_CID, p_tcb->peer_bda);
                } else {
                    FUNC5(p_tcb, GATT_CH_CLOSING);
                    ret = FUNC1 (p_tcb->peer_bda);
                }
#if (CLASSIC_BT_GATT_INCLUDED == TRUE)
            } else {
                ret = FUNC2(p_tcb->att_lcid);
#endif  ///CLASSIC_BT_GATT_INCLUDED == TRUE
            }
        } else {
            FUNC0 ("gatt_disconnect already in closing state");
        }
    }

    return ret;
}