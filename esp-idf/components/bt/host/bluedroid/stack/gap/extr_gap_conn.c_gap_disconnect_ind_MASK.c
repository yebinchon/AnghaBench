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
struct TYPE_4__ {int /*<<< orphan*/  gap_handle; int /*<<< orphan*/  (* p_callback ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ tGAP_CCB ;
typedef  int /*<<< orphan*/  UINT16 ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  GAP_EVT_CONN_CLOSED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5 (UINT16 l2cap_cid, BOOLEAN ack_needed)
{
    tGAP_CCB    *p_ccb;

    FUNC0 ("GAP_CONN - Rcvd L2CAP disc, CID: 0x%x", l2cap_cid);

    /* Find CCB based on CID */
    if ((p_ccb = FUNC2 (l2cap_cid)) == NULL) {
        return;
    }

    if (ack_needed) {
        FUNC1 (l2cap_cid);
    }

    p_ccb->p_callback (p_ccb->gap_handle, GAP_EVT_CONN_CLOSED);
    FUNC3 (p_ccb);
}