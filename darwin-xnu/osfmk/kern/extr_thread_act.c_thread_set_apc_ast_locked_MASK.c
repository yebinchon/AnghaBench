#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* thread_t ;
typedef  TYPE_2__* processor_t ;
struct TYPE_10__ {scalar_t__ state; TYPE_1__* active_thread; } ;
struct TYPE_9__ {TYPE_2__* last_processor; } ;

/* Variables and functions */
 int /*<<< orphan*/  AST_APC ; 
 TYPE_2__* PROCESSOR_NULL ; 
 scalar_t__ PROCESSOR_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(thread_t thread)
{
	FUNC3(thread, AST_APC);

	if (thread == FUNC2()) {
		FUNC0(thread);
	} else {
		processor_t processor = thread->last_processor;

		if (processor != PROCESSOR_NULL &&
		    processor->state == PROCESSOR_RUNNING &&
		    processor->active_thread == thread) {
			FUNC1(processor);
		}
	}
}