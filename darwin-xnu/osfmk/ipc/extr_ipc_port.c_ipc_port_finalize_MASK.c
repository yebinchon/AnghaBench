#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ipc_table_size_t ;
typedef  TYPE_1__* ipc_port_t ;
typedef  TYPE_2__* ipc_port_request_t ;
struct TYPE_12__ {int /*<<< orphan*/  ipr_size; } ;
struct TYPE_11__ {int /*<<< orphan*/  ip_messages; TYPE_2__* ip_requests; } ;

/* Variables and functions */
 TYPE_2__* IPR_NULL ; 
 scalar_t__ TURNSTILE_NULL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 

void
FUNC8(
	ipc_port_t		port)
{
	ipc_port_request_t requests = port->ip_requests;

	FUNC0(FUNC7(port) == TURNSTILE_NULL);
	FUNC0(FUNC3(port) == TURNSTILE_NULL);

	if (FUNC1(port)) {
		FUNC6("Trying to free an active port. port %p", port);
	}

	if (requests != IPR_NULL) {
		ipc_table_size_t its = requests->ipr_size;
		FUNC5(its, requests);
		port->ip_requests = IPR_NULL;
	}

	FUNC2(&port->ip_messages);
	
#if	MACH_ASSERT
	ipc_port_track_dealloc(port);
#endif	/* MACH_ASSERT */
}