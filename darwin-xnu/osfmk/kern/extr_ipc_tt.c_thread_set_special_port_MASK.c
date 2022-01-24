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
typedef  TYPE_1__* thread_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/  ipc_port_t ;
struct TYPE_6__ {scalar_t__ active; int /*<<< orphan*/  ith_sself; } ;

/* Variables and functions */
 int /*<<< orphan*/  IP_NULL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
#define  THREAD_KERNEL_PORT 128 
 TYPE_1__* THREAD_NULL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

kern_return_t
FUNC4(
	thread_t		thread,
	int			which,
	ipc_port_t	port)
{
	kern_return_t	result = KERN_SUCCESS;
	ipc_port_t		*whichp, old = IP_NULL;

	if (thread == THREAD_NULL)
		return (KERN_INVALID_ARGUMENT);

	switch (which) {

	case THREAD_KERNEL_PORT:
		whichp = &thread->ith_sself;
		break;

	default:
		return (KERN_INVALID_ARGUMENT);
	}

	FUNC2(thread);

	if (thread->active) {
		old = *whichp;
		*whichp = port;
	}
	else
		result = KERN_FAILURE;

	FUNC3(thread);

	if (FUNC0(old))
		FUNC1(old);

	return (result);
}