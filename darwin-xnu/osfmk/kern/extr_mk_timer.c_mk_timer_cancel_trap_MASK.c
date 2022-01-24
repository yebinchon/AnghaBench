#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct mk_timer_cancel_trap_args {scalar_t__ result_time; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__* mk_timer_t ;
typedef  scalar_t__ mach_vm_address_t ;
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  scalar_t__ kern_return_t ;
typedef  int /*<<< orphan*/  ipc_space_t ;
typedef  TYPE_3__* ipc_port_t ;
typedef  int /*<<< orphan*/  armed_time ;
struct TYPE_8__ {scalar_t__ deadline; } ;
struct TYPE_11__ {TYPE_1__ tc_call; } ;
struct TYPE_10__ {scalar_t__ ip_kobject; } ;
struct TYPE_9__ {int /*<<< orphan*/  lock; scalar_t__ is_armed; int /*<<< orphan*/  active; TYPE_4__ call_entry; TYPE_3__* port; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ IKOT_TIMER ; 
 scalar_t__ KERN_FAILURE ; 
 scalar_t__ KERN_INVALID_ARGUMENT ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (void*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_4__*) ; 

kern_return_t
FUNC9(
	struct mk_timer_cancel_trap_args *args)
{
	mach_port_name_t	name = args->name;
	mach_vm_address_t	result_time_addr = args->result_time; 
	uint64_t			armed_time = 0;
	mk_timer_t			timer;
	ipc_space_t			myspace = FUNC2();
	ipc_port_t			port;
	kern_return_t		result;

	result = FUNC5(myspace, name, &port);
	if (result != KERN_SUCCESS)
		return (result);

	if (FUNC3(port) == IKOT_TIMER) {
		timer = (mk_timer_t)port->ip_kobject;
		FUNC0(timer != NULL);
		FUNC6(&timer->lock);
		FUNC0(timer->port == port);
		FUNC4(port);

		if (timer->is_armed) {
			armed_time = timer->call_entry.tc_call.deadline;
			if (FUNC8(&timer->call_entry))
				timer->active--;
			timer->is_armed = FALSE;
		}

		FUNC7(&timer->lock);
	}
	else {
		FUNC4(port);
		result = KERN_INVALID_ARGUMENT;
	}

	if (result == KERN_SUCCESS)
		if (	result_time_addr != 0										&&
				FUNC1((void *)&armed_time, result_time_addr,
								sizeof (armed_time)) != 0					)
			result = KERN_FAILURE;

	return (result);
}