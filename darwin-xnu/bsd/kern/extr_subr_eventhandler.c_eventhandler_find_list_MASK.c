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
struct eventhandler_lists_ctxt {int /*<<< orphan*/  eventhandler_mutex; int /*<<< orphan*/  eventhandler_lists_initted; } ;
struct eventhandler_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct eventhandler_list*) ; 
 struct eventhandler_list* FUNC1 (struct eventhandler_lists_ctxt*,char const*) ; 
 struct eventhandler_lists_ctxt evthdlr_lists_ctxt_glb ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct eventhandler_list *
FUNC5(struct eventhandler_lists_ctxt *evthdlr_lists_ctxt,
    const char *name)
{
	struct eventhandler_list	*list;

	if (evthdlr_lists_ctxt == NULL)
		evthdlr_lists_ctxt = &evthdlr_lists_ctxt_glb;

	if (!evthdlr_lists_ctxt->eventhandler_lists_initted)
		return(NULL);

	/* scan looking for the requested list */
	FUNC3(&evthdlr_lists_ctxt->eventhandler_mutex);
	list = FUNC1(evthdlr_lists_ctxt, name);
	if (list != NULL) {
		FUNC2(&evthdlr_lists_ctxt->eventhandler_mutex);
		FUNC0(list);
	}
	FUNC4(&evthdlr_lists_ctxt->eventhandler_mutex);

	return(list);
}