#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ mach_port_t ;

/* Variables and functions */
 scalar_t__ MACH_PORT_NULL ; 
 int /*<<< orphan*/  MACH_PORT_RIGHT_RECEIVE ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ _task_reply_port ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void
FUNC5(mach_port_t migport)
{
	mach_port_t port = FUNC0();
	if (port != MACH_PORT_NULL && port != _task_reply_port) {
		FUNC1(_task_reply_port);
		(void) FUNC3(FUNC4(), port, MACH_PORT_RIGHT_RECEIVE, -1);
		if (migport != port) {
			(void) FUNC2(FUNC4(), migport);
		}
		FUNC1(MACH_PORT_NULL);
	}
}