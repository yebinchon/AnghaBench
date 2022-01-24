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
struct TYPE_3__ {int /*<<< orphan*/ * rsp_list; int /*<<< orphan*/  is_attr_search; int /*<<< orphan*/  con_state; int /*<<< orphan*/  timer_entry; } ;
typedef  TYPE_1__ tCONN_CB ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SDP_STATE_IDLE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3 (tCONN_CB *p_ccb)
{
    /* Ensure timer is stopped and released */
    FUNC1(&p_ccb->timer_entry);

    /* Drop any response pointer we may be holding */
    p_ccb->con_state = SDP_STATE_IDLE;
#if SDP_CLIENT_ENABLED == TRUE
    p_ccb->is_attr_search = FALSE;
#endif

    /* Free the response buffer */
    if (p_ccb->rsp_list) {
        FUNC0("releasing SDP rsp_list\n");

        FUNC2(p_ccb->rsp_list);
        p_ccb->rsp_list = NULL;
    }
}