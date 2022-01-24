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
typedef  int /*<<< orphan*/  spl_t ;
typedef  TYPE_1__* processor_t ;
typedef  int /*<<< orphan*/  processor_set_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_5__ {scalar_t__ state; int /*<<< orphan*/  cpu_id; int /*<<< orphan*/  processor_set; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 scalar_t__ PROCESSOR_DISPATCHING ; 
 scalar_t__ PROCESSOR_OFF_LINE ; 
 scalar_t__ PROCESSOR_SHUTDOWN ; 
 scalar_t__ PROCESSOR_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

kern_return_t
FUNC8(
	processor_t			processor)
{
	processor_set_t		pset;
	spl_t				s;

	s = FUNC6();
	pset = processor->processor_set;
	FUNC3(pset);
	if (processor->state == PROCESSOR_OFF_LINE) {
		/*
		 * Success if already shutdown.
		 */
		FUNC4(pset);
		FUNC7(s);

		return (KERN_SUCCESS);
	}

	if (processor->state == PROCESSOR_START) {
		/*
		 * Failure if currently being started.
		 */
		FUNC4(pset);
		FUNC7(s);

		return (KERN_FAILURE);
	}

	/*
	 * If the processor is dispatching, let it finish.
	 */
	while (processor->state == PROCESSOR_DISPATCHING) {
		FUNC4(pset);
		FUNC7(s);
		FUNC1(1);
		s = FUNC6();
		FUNC3(pset);
	}

	/*
	 * Success if already being shutdown.
	 */
	if (processor->state == PROCESSOR_SHUTDOWN) {
		FUNC4(pset);
		FUNC7(s);

		return (KERN_SUCCESS);
	}

	FUNC5(pset, processor, PROCESSOR_SHUTDOWN);

	FUNC4(pset);

	FUNC2(processor);
	FUNC7(s);

	FUNC0(processor->cpu_id);

	return (KERN_SUCCESS);
}