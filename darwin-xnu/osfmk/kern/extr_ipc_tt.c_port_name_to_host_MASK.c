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
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  scalar_t__ kern_return_t ;
typedef  int /*<<< orphan*/  ipc_port_t ;
typedef  int /*<<< orphan*/  host_t ;

/* Variables and functions */
 int /*<<< orphan*/  HOST_NULL ; 
 scalar_t__ KERN_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

host_t
FUNC5(
	mach_port_name_t name)
{

	host_t host = HOST_NULL;
	kern_return_t kr;
	ipc_port_t port;

	if (FUNC0(name)) {
		kr = FUNC4(FUNC2(), name, &port);
		if (kr == KERN_SUCCESS) {
			host = FUNC1(port);
			FUNC3(port);
		}
	}
	return host;
}