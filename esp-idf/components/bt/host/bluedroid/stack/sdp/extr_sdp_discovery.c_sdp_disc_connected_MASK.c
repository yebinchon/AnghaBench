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
struct TYPE_5__ {scalar_t__ num_handles; int /*<<< orphan*/  disc_state; scalar_t__ is_attr_search; } ;
typedef  TYPE_1__ tCONN_CB ;

/* Variables and functions */
 int /*<<< orphan*/  SDP_DISC_WAIT_SEARCH_ATTR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC2 (tCONN_CB *p_ccb)
{
    if (p_ccb->is_attr_search) {
        p_ccb->disc_state = SDP_DISC_WAIT_SEARCH_ATTR;

        FUNC0 (p_ccb, NULL);
    } else {
        /* First step is to get a list of the handles from the server. */
        /* We are not searching for a specific attribute, so we will   */
        /* first search for the service, then get all attributes of it */

        p_ccb->num_handles = 0;
        FUNC1(p_ccb, 0, NULL);
    }

}