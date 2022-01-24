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
typedef  scalar_t__ processor_set_t ;
typedef  TYPE_1__* ipc_port_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_6__ {scalar_t__ ip_kobject; } ;

/* Variables and functions */
 scalar_t__ IKOT_PSET ; 
 scalar_t__ IKOT_PSET_NAME ; 
 scalar_t__ PROCESSOR_SET_NULL ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

boolean_t
FUNC3(ipc_port_t port, boolean_t matchn, processor_set_t *ppset)
{
	processor_set_t pset;

	pset = PROCESSOR_SET_NULL;
	if (FUNC0(port) &&
		((FUNC1(port) == IKOT_PSET) ||
			(matchn && (FUNC1(port) == IKOT_PSET_NAME)))) {
		pset = (processor_set_t) port->ip_kobject;
	}

	*ppset = pset;
	FUNC2(port);

	return (TRUE);
}