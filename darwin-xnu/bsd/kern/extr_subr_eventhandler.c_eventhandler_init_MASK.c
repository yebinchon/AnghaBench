#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct eventhandler_list {int dummy; } ;
struct eventhandler_entry_generic {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MCR_SLEEP ; 
 void* eg_cache ; 
 int eg_size ; 
 void* el_cache ; 
 void* el_lock_attr ; 
 void* el_lock_grp ; 
 int /*<<< orphan*/  el_lock_grp_attr ; 
 int el_size ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* eventhandler_mutex_attr ; 
 void* eventhandler_mutex_grp ; 
 int /*<<< orphan*/  eventhandler_mutex_grp_attr ; 
 int /*<<< orphan*/  evthdlr_lists_ctxt_glb ; 
 void* FUNC1 () ; 
 void* FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 void* FUNC4 (char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC5(void)
{
	eventhandler_mutex_grp_attr = FUNC3();
	eventhandler_mutex_grp = FUNC2("eventhandler",
	    eventhandler_mutex_grp_attr);
	eventhandler_mutex_attr = FUNC1();

	el_lock_grp_attr = FUNC3();
	el_lock_grp = FUNC2("eventhandler list",
	    el_lock_grp_attr);
	el_lock_attr = FUNC1();

	FUNC0(&evthdlr_lists_ctxt_glb);

	eg_size = sizeof (struct eventhandler_entry_generic);
	eg_cache = FUNC4("eventhdlr_generic", eg_size,
	    sizeof (uint64_t), 0, MCR_SLEEP);

	el_size = sizeof (struct eventhandler_list);
	el_cache = FUNC4("eventhdlr_list", el_size,
	    sizeof (uint64_t), 0, MCR_SLEEP);
}