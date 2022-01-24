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
struct TYPE_3__ {int /*<<< orphan*/ * pending_ind_q; } ;
typedef  TYPE_1__ tGATT_TCB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(tGATT_TCB *p_tcb)
{
    FUNC0("gatt_free_pending_ind");
    if (p_tcb->pending_ind_q == NULL) {
        return;
    }

    /* release all queued indications */
    while (!FUNC3(p_tcb->pending_ind_q)) {
        FUNC4(FUNC1(p_tcb->pending_ind_q, 0));
	}
    FUNC2(p_tcb->pending_ind_q, NULL);
    p_tcb->pending_ind_q = NULL;
}