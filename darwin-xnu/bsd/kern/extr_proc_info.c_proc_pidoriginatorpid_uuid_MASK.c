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
typedef  int /*<<< orphan*/  uuid_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  scalar_t__ kern_return_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOATTR ; 
 int ESRCH ; 
 scalar_t__ KERN_INVALID_TASK ; 
 scalar_t__ KERN_INVALID_VALUE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

int
FUNC2(uuid_t uuid, uint32_t buffersize, pid_t *pid)
{
	pid_t originator_pid;
	kern_return_t kr;
	int error;

	/* 
	 * Get the current voucher origin pid. The pid returned here 
	 * might not be valid or may have been recycled.
	 */
	kr = FUNC1(&originator_pid);
	/* If errors, convert errors to appropriate format */
	if (kr) {
		if (kr == KERN_INVALID_TASK)
			error = ESRCH;
		else if (kr == KERN_INVALID_VALUE)
			error = ENOATTR;
		else
			error = EINVAL;
		return error;
	}

	*pid = originator_pid;
	error = FUNC0(originator_pid, uuid, buffersize);
	return error;
}