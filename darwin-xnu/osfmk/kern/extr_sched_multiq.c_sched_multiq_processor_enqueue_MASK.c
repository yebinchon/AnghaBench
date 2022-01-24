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
typedef  TYPE_1__* thread_t ;
typedef  scalar_t__ processor_t ;
typedef  int /*<<< orphan*/  integer_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_5__ {scalar_t__ chosen_processor; scalar_t__ bound_processor; scalar_t__ runq; int /*<<< orphan*/  sched_group; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ PROCESSOR_NULL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static boolean_t
FUNC5(
                               processor_t      processor,
                               thread_t         thread,
                               integer_t        options)
{
	boolean_t       result;

	FUNC0(processor == thread->chosen_processor);

	if (thread->bound_processor != PROCESSOR_NULL) {
		FUNC0(thread->bound_processor == processor);

		result = FUNC3(FUNC1(processor), thread, options);
		thread->runq = processor;

		return result;
	}

	FUNC4(FUNC2(processor),
	                           thread->sched_group,
	                           thread, options);

	thread->runq = processor;

	return (FALSE);
}