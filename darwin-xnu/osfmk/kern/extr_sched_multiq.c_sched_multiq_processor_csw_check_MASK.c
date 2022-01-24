#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* run_queue_t ;
typedef  TYPE_2__* processor_t ;
typedef  TYPE_3__* entry_queue_t ;
typedef  int boolean_t ;
typedef  int ast_t ;
struct TYPE_12__ {scalar_t__ urgency; int /*<<< orphan*/  highq; } ;
struct TYPE_11__ {int current_pri; scalar_t__ first_timeslice; int /*<<< orphan*/ * active_thread; } ;
struct TYPE_10__ {scalar_t__ urgency; int /*<<< orphan*/  highq; } ;

/* Variables and functions */
 int AST_NONE ; 
 int AST_PREEMPT ; 
 int AST_URGENT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* FUNC3 (TYPE_2__*) ; 
 TYPE_3__* FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ast_t
FUNC6(processor_t processor)
{
	boolean_t       has_higher;
	int             pri;

	if (FUNC5(processor, FUNC2())) {
		return (AST_PREEMPT | AST_URGENT);
	}

	entry_queue_t main_entryq = FUNC4(processor);
	run_queue_t   bound_runq  = FUNC3(processor);

	FUNC1(processor->active_thread != NULL);

	pri = FUNC0(main_entryq->highq, bound_runq->highq);

	if (processor->first_timeslice) {
		has_higher = (pri > processor->current_pri);
	} else {
		has_higher = (pri >= processor->current_pri);
	}

	if (has_higher) {
		if (main_entryq->urgency > 0)
			return (AST_PREEMPT | AST_URGENT);

		if (bound_runq->urgency > 0)
			return (AST_PREEMPT | AST_URGENT);

		return AST_PREEMPT;
	}

	return AST_NONE;
}