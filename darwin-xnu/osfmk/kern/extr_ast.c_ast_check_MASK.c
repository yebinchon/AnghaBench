#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* thread_t ;
typedef  TYPE_2__* processor_t ;
typedef  scalar_t__ perfcontrol_class_t ;
typedef  int boolean_t ;
typedef  int /*<<< orphan*/  ast_t ;
struct TYPE_14__ {scalar_t__ state; scalar_t__ current_perfctl_class; int /*<<< orphan*/  current_recommended_pset_type; int /*<<< orphan*/  current_sfi_class; int /*<<< orphan*/  current_pri; TYPE_1__* active_thread; } ;
struct TYPE_13__ {int /*<<< orphan*/  sfi_class; int /*<<< orphan*/  sched_pri; } ;

/* Variables and functions */
 int /*<<< orphan*/  AST_NONE ; 
 int /*<<< orphan*/  PERFCONTROL_ATTR_UPDATE ; 
 scalar_t__ PROCESSOR_RUNNING ; 
 scalar_t__ PROCESSOR_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

void
FUNC12(processor_t processor)
{
	if (processor->state != PROCESSOR_RUNNING &&
	    processor->state != PROCESSOR_SHUTDOWN)
		return;

	thread_t thread = processor->active_thread;

	FUNC0(thread == FUNC4());

	FUNC10(thread);

	/*
	 * Propagate thread ast to processor.
	 * (handles IPI in response to setting AST flag)
	 */
	FUNC2(thread);

	boolean_t needs_callout = false;
	processor->current_pri = thread->sched_pri;
	processor->current_sfi_class = thread->sfi_class = FUNC8(thread);
	processor->current_recommended_pset_type = FUNC7(thread);
	perfcontrol_class_t thread_class = FUNC9(thread);
	if (thread_class != processor->current_perfctl_class) {
	    /* We updated the perfctl class of this thread from another core. 
	     * Since we dont do CLPC callouts from another core, do a callout
	     * here to let CLPC know that the currently running thread has a new
	     * class.
	     */
	    needs_callout = true;
	}
	processor->current_perfctl_class = thread_class;

	ast_t preempt;

	if ((preempt = FUNC3(processor, AST_NONE)) != AST_NONE)
		FUNC1(preempt);

	FUNC11(thread);

	if (needs_callout) {
	    FUNC6(PERFCONTROL_ATTR_UPDATE,
		    FUNC5(), 0, thread);
	}
}