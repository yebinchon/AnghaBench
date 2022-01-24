#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  user_data; int /*<<< orphan*/  disconnect_reason; int /*<<< orphan*/  (* p_cb2 ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* p_cb ) (int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ tCONN_CB ;
typedef  int /*<<< orphan*/  UINT16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7 (UINT16 l2cap_cid, UINT16 result)
{
    tCONN_CB    *p_ccb;
    FUNC2(result);

    /* Find CCB based on CID */
    if ((p_ccb = FUNC3 (l2cap_cid)) == NULL) {
        FUNC1 ("SDP - Rcvd L2CAP disc cfm, unknown CID: 0x%x\n", l2cap_cid);
        return;
    }

    FUNC0 ("SDP - Rcvd L2CAP disc cfm, CID: 0x%x, rsn %d\n", l2cap_cid, p_ccb->disconnect_reason);
    /* Tell the user if he has a callback */
    if (p_ccb->p_cb) {
        (*p_ccb->p_cb) (p_ccb->disconnect_reason);
    } else if (p_ccb->p_cb2) {
        (*p_ccb->p_cb2) (p_ccb->disconnect_reason, p_ccb->user_data);
    }


    FUNC4 (p_ccb);
}