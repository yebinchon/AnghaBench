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
struct TYPE_3__ {int /*<<< orphan*/  peer_bda; int /*<<< orphan*/  transport; } ;
typedef  TYPE_1__ tGATT_TCB ;
typedef  int /*<<< orphan*/  UINT16 ;

/* Variables and functions */
 int /*<<< orphan*/  GATT_CONN_TERMINATE_LOCAL_HOST ; 
 int /*<<< orphan*/  GATT_TRANSPORT_BR_EDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(UINT16 lcid, UINT16 result)
{
    tGATT_TCB       *p_tcb;
    UINT16          reason;
    FUNC1(result);

    /* look up clcb for this channel */
    if ((p_tcb = FUNC5(lcid)) != NULL) {
        /* If the device is not in the service changed client list, add it... */
        if (FUNC6(p_tcb->peer_bda) == NULL) {
            if (FUNC2(p_tcb->peer_bda)) {
                FUNC3(p_tcb->peer_bda);
            }
        }

        /* send disconnect callback */
        /* if ACL link is still up, no reason is logged, l2cap is disconnect from peer */
        if ((reason = FUNC0(p_tcb->peer_bda, p_tcb->transport)) == 0) {
            reason = GATT_CONN_TERMINATE_LOCAL_HOST;
        }

        FUNC4(p_tcb->peer_bda, reason, GATT_TRANSPORT_BR_EDR);
    }
}