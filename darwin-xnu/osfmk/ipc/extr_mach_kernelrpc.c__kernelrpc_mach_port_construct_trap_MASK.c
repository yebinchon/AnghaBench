#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* task_t ;
struct _kernelrpc_mach_port_construct_args {int /*<<< orphan*/  name; int /*<<< orphan*/  context; int /*<<< orphan*/  options; int /*<<< orphan*/  target; } ;
typedef  int /*<<< orphan*/  options ;
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  mach_port_options_t ;
typedef  int /*<<< orphan*/  mach_port_name_t ;
struct TYPE_5__ {int /*<<< orphan*/  itk_space; } ;

/* Variables and functions */
 int KERN_SUCCESS ; 
 int MACH_SEND_INVALID_DATA ; 
 int MACH_SEND_INVALID_DEST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

int
FUNC6(struct _kernelrpc_mach_port_construct_args *args)
{
	task_t task = FUNC4(args->target);
	mach_port_name_t name;
	int rv = MACH_SEND_INVALID_DEST;
	mach_port_options_t options;

	if (FUNC0(args->options, (char *)&options, sizeof (options))) {
		rv = MACH_SEND_INVALID_DATA;
		goto done;
	}

	if (task != FUNC2())
		goto done;

	rv = FUNC3(task->itk_space, &options, args->context, &name);
	if (rv == KERN_SUCCESS)
		rv = FUNC1(&name, args->name, sizeof (name));

done:
	if (task)
		FUNC5(task);
	return (rv);
}