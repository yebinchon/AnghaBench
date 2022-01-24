#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ processor_t ;
typedef  TYPE_1__* ipc_port_t ;
struct TYPE_8__ {scalar_t__ ip_kobject; } ;

/* Variables and functions */
 scalar_t__ IKOT_PROCESSOR ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ PROCESSOR_NULL ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

processor_t
FUNC5(
	ipc_port_t	port)
{
	processor_t processor = PROCESSOR_NULL;

	if (FUNC0(port)) {
		FUNC3(port);
		if (FUNC1(port) &&
		    (FUNC2(port) == IKOT_PROCESSOR))
			processor = (processor_t) port->ip_kobject;
		FUNC4(port);
	}

	return processor;
}