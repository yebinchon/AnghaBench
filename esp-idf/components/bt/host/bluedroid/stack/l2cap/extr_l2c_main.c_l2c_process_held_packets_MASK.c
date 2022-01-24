#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  list_node_t ;
struct TYPE_7__ {int /*<<< orphan*/  rcv_hold_tle; int /*<<< orphan*/  rcv_pending_q; } ;
struct TYPE_6__ {scalar_t__ layer_specific; } ;
typedef  TYPE_1__ BT_HDR ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  BTU_TTYPE_L2CAP_HOLD ; 
 int /*<<< orphan*/  BT_1SEC_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_4__ l2cb ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/  const*) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_1__*) ; 

void FUNC10(BOOLEAN timed_out)
{
    if (FUNC6(l2cb.rcv_pending_q)) {
        return;
    }

    if (!timed_out) {
        FUNC2(&l2cb.rcv_hold_tle);
        FUNC0("L2CAP HOLD CONTINUE");
    } else {
        FUNC0("L2CAP HOLD TIMEOUT");
    }

    for (const list_node_t *node = FUNC4(l2cb.rcv_pending_q);
            node != FUNC5(l2cb.rcv_pending_q);)  {
        BT_HDR *p_buf = FUNC8(node);
        node = FUNC7(node);
        if (!timed_out || (!p_buf->layer_specific) || (--p_buf->layer_specific == 0)) {
            FUNC9(l2cb.rcv_pending_q, p_buf);
            p_buf->layer_specific = 0xFFFF;
            FUNC3(p_buf);
        }
    }

    /* If anyone still in the queue, restart the timeout */
    if (!FUNC6(l2cb.rcv_pending_q)) {
        FUNC1 (&l2cb.rcv_hold_tle, BTU_TTYPE_L2CAP_HOLD, BT_1SEC_TIMEOUT);
    }
}