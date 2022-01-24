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
struct work_interval {int dummy; } ;
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  scalar_t__ kern_return_t ;
typedef  int /*<<< orphan*/  ipc_port_t ;

/* Variables and functions */
 int /*<<< orphan*/  IPC_PORT_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ KERN_INVALID_CAPABILITY ; 
 scalar_t__ KERN_INVALID_NAME ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct work_interval* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static kern_return_t
FUNC7(mach_port_name_t     name,
                           struct work_interval **work_interval)
{
	if (!FUNC1(name))
		return KERN_INVALID_NAME;

	ipc_port_t port = IPC_PORT_NULL;
	kern_return_t kr = KERN_SUCCESS;

	kr = FUNC5(FUNC3(), name, &port);
	if (kr != KERN_SUCCESS)
		return kr;
	/* port is locked */

	FUNC2(FUNC0(port));

	struct work_interval *converted_work_interval;

	converted_work_interval = FUNC6(port);

	/* the port is valid, but doesn't denote a work_interval */
	if (converted_work_interval == NULL)
		kr = KERN_INVALID_CAPABILITY;

	FUNC4(port);

	if (kr == KERN_SUCCESS)
		*work_interval = converted_work_interval;

	return kr;

}