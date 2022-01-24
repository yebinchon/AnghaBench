#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* thread_t ;
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  int /*<<< orphan*/  ipc_port_t ;
struct TYPE_9__ {TYPE_1__* task; } ;
struct TYPE_8__ {int /*<<< orphan*/  itk_space; } ;

/* Variables and functions */
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  MACH_PORT_NULL ; 
 TYPE_2__* THREAD_NULL ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

thread_t
FUNC7(mach_port_name_t thread_name)
{
	thread_t thread = THREAD_NULL;
	thread_t self = FUNC1();

	/*
	 * Translate the port name if supplied.
	 */
	if (thread_name != MACH_PORT_NULL) {
		ipc_port_t port;

		if (FUNC5(self->task->itk_space,
		                            thread_name, &port) == KERN_SUCCESS) {
			FUNC2(port);
			FUNC4(port);

			thread = FUNC0(port);
			FUNC3(port);

			if (thread == THREAD_NULL) {
				return thread;
			}

			if ((thread == self) || (thread->task != self->task)) {
				FUNC6(thread);
				thread = THREAD_NULL;
			}
		}
	}

	return thread;
}