#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* thread_t ;
typedef  TYPE_2__* ipc_port_t ;
struct TYPE_13__ {scalar_t__ ip_kobject; } ;
struct TYPE_12__ {int /*<<< orphan*/  task; } ;

/* Variables and functions */
 scalar_t__ IKOT_THREAD ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ KERN_SUCCESS ; 
 TYPE_1__* THREAD_NULL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

thread_t
FUNC9(
	ipc_port_t		port)
{
	thread_t	thread = THREAD_NULL;

	if (FUNC0(port)) {
		FUNC5(port);

		if (FUNC3(port) &&
		    FUNC4(port) == IKOT_THREAD) {
			thread = (thread_t)port->ip_kobject;
			FUNC1(thread != THREAD_NULL);

			/* Use task conversion rules for thread control conversions */
			if (FUNC7(FUNC2(), thread->task) != KERN_SUCCESS) {
				FUNC6(port);
				return THREAD_NULL;
			}

			FUNC8(thread);
		}

		FUNC6(port);
	}

	return (thread);
}