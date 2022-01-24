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
struct TYPE_5__ {scalar_t__ con_state; int con_flags; } ;
typedef  TYPE_1__ tCONN_CB ;
typedef  int /*<<< orphan*/  UINT16 ;
typedef  int /*<<< orphan*/  BT_HDR ;

/* Variables and functions */
 int SDP_FLAGS_IS_ORIG ; 
 scalar_t__ SDP_STATE_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5 (UINT16 l2cap_cid, BT_HDR *p_msg)
{
    tCONN_CB    *p_ccb;

    /* Find CCB based on CID */
    if ((p_ccb = FUNC4 (l2cap_cid)) != NULL) {
        if (p_ccb->con_state == SDP_STATE_CONNECTED) {
            if (p_ccb->con_flags & SDP_FLAGS_IS_ORIG) {
                FUNC2 (p_ccb, p_msg);
            } else {
                FUNC3 (p_ccb, p_msg);
            }
        } else {
            FUNC0 ("SDP - Ignored L2CAP data while in state: %d, CID: 0x%x\n",
                               p_ccb->con_state, l2cap_cid);
        }
    } else {
        FUNC0 ("SDP - Rcvd L2CAP data, unknown CID: 0x%x\n", l2cap_cid);
    }

    FUNC1 (p_msg);
}