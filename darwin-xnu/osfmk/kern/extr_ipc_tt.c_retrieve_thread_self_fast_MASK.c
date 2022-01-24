#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* thread_t ;
typedef  TYPE_2__* ipc_port_t ;
struct TYPE_15__ {int /*<<< orphan*/  ip_srights; } ;
struct TYPE_14__ {scalar_t__ ith_self; TYPE_2__* ith_sself; } ;

/* Variables and functions */
 scalar_t__ IP_NULL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 () ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 TYPE_2__* FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

ipc_port_t
FUNC9(
	thread_t		thread)
{
	ipc_port_t port;

	FUNC0(thread == FUNC1());

	FUNC7(thread);

	FUNC0(thread->ith_self != IP_NULL);

	if ((port = thread->ith_sself) == thread->ith_self) {
		/* no interposing */

		FUNC3(port);
		FUNC0(FUNC2(port));
		FUNC4(port);
		port->ip_srights++;
		FUNC5(port);
	}
	else
		port = FUNC6(port);

	FUNC8(thread);

	return port;
}