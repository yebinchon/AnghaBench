#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* thread_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_6__ {int /*<<< orphan*/ * ids; scalar_t__ ifps; } ;
struct TYPE_7__ {TYPE_1__ machine; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_2__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ids_zone ; 
 int /*<<< orphan*/  x86_FLOAT_STATE64 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

kern_return_t
FUNC4(
	thread_t thread)
{
    /*
     * If there's an fpu save area, free it.
     * The initialized state will then be lazily faulted-in, if required.
     * And if we're target, re-arm the no-fpu trap.
     */
	if (thread->machine.ifps) {
		(void) FUNC2(thread, NULL, x86_FLOAT_STATE64);

		if (thread == FUNC1())
			FUNC0();
	}

	if (thread->machine.ids) {
		FUNC3(ids_zone, thread->machine.ids);
		thread->machine.ids = NULL;
	}

	return  KERN_SUCCESS;
}