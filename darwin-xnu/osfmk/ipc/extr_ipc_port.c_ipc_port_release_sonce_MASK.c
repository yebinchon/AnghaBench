#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* ipc_port_t ;
struct TYPE_9__ {scalar_t__ ip_sorights; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  IPC_PORT_ADJUST_SR_NONE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,TYPE_1__*) ; 

void
FUNC7(
	ipc_port_t	port)
{
	if (!FUNC0(port))
		return;

	FUNC5(port, IPC_PORT_ADJUST_SR_NONE, FALSE);

	FUNC2(port);

	FUNC1(port->ip_sorights > 0);
	if (port->ip_sorights == 0) {
		FUNC6("Over-release of port %p send-once right!", port);
	}

	port->ip_sorights--;

	FUNC4(port);
	FUNC3(port);
}