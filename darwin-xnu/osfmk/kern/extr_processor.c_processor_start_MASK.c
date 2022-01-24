#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* thread_t ;
typedef  int /*<<< orphan*/  thread_continue_t ;
typedef  int /*<<< orphan*/  spl_t ;
typedef  TYPE_2__* processor_t ;
typedef  scalar_t__ processor_set_t ;
typedef  scalar_t__ kern_return_t ;
struct TYPE_17__ {scalar_t__ processor_set; scalar_t__ state; scalar_t__ idle_thread; scalar_t__ active_thread; scalar_t__ next_thread; scalar_t__ processor_self; int /*<<< orphan*/  cpu_id; } ;
struct TYPE_16__ {int /*<<< orphan*/  last_made_runnable_time; int /*<<< orphan*/  state; TYPE_2__* bound_processor; } ;

/* Variables and functions */
 scalar_t__ IP_NULL ; 
 scalar_t__ KERN_FAILURE ; 
 scalar_t__ KERN_INVALID_ARGUMENT ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  MAXPRI_KERNEL ; 
 TYPE_2__* PROCESSOR_NULL ; 
 scalar_t__ PROCESSOR_OFF_LINE ; 
 scalar_t__ PROCESSOR_SET_NULL ; 
 scalar_t__ PROCESSOR_START ; 
 int /*<<< orphan*/  THREAD_CONTINUE_NULL ; 
 scalar_t__ THREAD_NULL ; 
 int /*<<< orphan*/  TH_RUN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_2__* master_processor ; 
 scalar_t__ processor_start_thread ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 

kern_return_t
FUNC16(
	processor_t			processor)
{
	processor_set_t		pset;
	thread_t			thread;   
	kern_return_t		result;
	spl_t				s;

	if (processor == PROCESSOR_NULL || processor->processor_set == PROCESSOR_SET_NULL)
		return (KERN_INVALID_ARGUMENT);

	if (processor == master_processor) {
		processor_t		prev;

		prev = FUNC11(processor);
		FUNC12(THREAD_CONTINUE_NULL);

		result = FUNC0(processor->cpu_id);

		FUNC11(prev);

		return (result);
	}

	s = FUNC9();
	pset = processor->processor_set;
	FUNC6(pset);
	if (processor->state != PROCESSOR_OFF_LINE) {
		FUNC7(pset);
		FUNC10(s);

		return (KERN_FAILURE);
	}

	FUNC8(pset, processor, PROCESSOR_START);
	FUNC7(pset);
	FUNC10(s);

	/*
	 *	Create the idle processor thread.
	 */
	if (processor->idle_thread == THREAD_NULL) {
		result = FUNC1(processor);
		if (result != KERN_SUCCESS) {
			s = FUNC9();
			FUNC6(pset);
			FUNC8(pset, processor, PROCESSOR_OFF_LINE);
			FUNC7(pset);
			FUNC10(s);

			return (result);
		}
	}

	/*
	 *	If there is no active thread, the processor
	 *	has never been started.  Create a dedicated
	 *	start up thread.
	 */
	if (	processor->active_thread == THREAD_NULL		&&
			processor->next_thread == THREAD_NULL		) {
		result = FUNC4((thread_continue_t)processor_start_thread, NULL, MAXPRI_KERNEL, &thread);
		if (result != KERN_SUCCESS) {
			s = FUNC9();
			FUNC6(pset);
			FUNC8(pset, processor, PROCESSOR_OFF_LINE);
			FUNC7(pset);
			FUNC10(s);

			return (result);
		}

		s = FUNC9();
		FUNC14(thread);
		thread->bound_processor = processor;
		processor->next_thread = thread;
		thread->state = TH_RUN;
		thread->last_made_runnable_time = FUNC5();
		FUNC15(thread);
		FUNC10(s);

		FUNC13(thread);
	}

	if (processor->processor_self == IP_NULL)
		FUNC3(processor);

	result = FUNC0(processor->cpu_id);
	if (result != KERN_SUCCESS) {
		s = FUNC9();
		FUNC6(pset);
		FUNC8(pset, processor, PROCESSOR_OFF_LINE);
		FUNC7(pset);
		FUNC10(s);

		return (result);
	}

	FUNC2(processor);

	return (KERN_SUCCESS);
}