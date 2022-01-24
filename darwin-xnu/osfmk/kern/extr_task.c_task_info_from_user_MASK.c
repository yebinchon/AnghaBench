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
typedef  int /*<<< orphan*/  task_t ;
typedef  int /*<<< orphan*/  task_info_t ;
typedef  int /*<<< orphan*/  task_flavor_t ;
typedef  int /*<<< orphan*/  mach_port_t ;
typedef  int /*<<< orphan*/  mach_msg_type_number_t ;
typedef  int /*<<< orphan*/  kern_return_t ;

/* Variables and functions */
 int /*<<< orphan*/  TASK_DYLD_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

kern_return_t
FUNC4(
	mach_port_t		task_port,
	task_flavor_t		flavor,
	task_info_t		task_info_out,
	mach_msg_type_number_t	*task_info_count)
{
	task_t task;
	kern_return_t ret;

	if (flavor == TASK_DYLD_INFO)
		task = FUNC0(task_port);
	else
		task = FUNC1(task_port);

	ret = FUNC3(task, flavor, task_info_out, task_info_count);

	FUNC2(task);

	return ret;
}