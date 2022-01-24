#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ semaphore_t ;
typedef  TYPE_1__* ipc_port_t ;
struct TYPE_6__ {scalar_t__ ip_kobject; } ;

/* Variables and functions */
 scalar_t__ IKOT_SEMAPHORE ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ SEMAPHORE_NULL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

semaphore_t
FUNC5 (ipc_port_t port)
{

	if (FUNC0(port)) {
		semaphore_t semaphore;

		/*
		 * No need to lock because we have a reference on the
		 * port, and if it is a true semaphore port, that reference
		 * keeps the semaphore bound to the port (and active).
		 */
		if (FUNC3(port) == IKOT_SEMAPHORE) {
			FUNC1(FUNC2(port));
			semaphore = (semaphore_t) port->ip_kobject;
			FUNC4(semaphore);
			return (semaphore);
		}
	}
	return SEMAPHORE_NULL;
}