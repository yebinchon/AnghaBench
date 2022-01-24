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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  mach_port_t ;

/* Variables and functions */
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  MACH_PORT_RIGHT_RECEIVE ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,int,...) ; 

__attribute__((used)) static void FUNC7(void)
{
	uint64_t i = 0;

	FUNC6("[%d] Allocating mach_ports\n", FUNC0());
	for (i = 0; ; i++) {
		mach_port_t port;

		if ((FUNC3(FUNC4(), MACH_PORT_RIGHT_RECEIVE, &port)) != KERN_SUCCESS) {
			break;
		}
	}
	FUNC6("[%d] Number of allocations: %lld\n", FUNC0(), i);

	/* Signal to the parent that we're done allocating */
	FUNC2(FUNC1(), SIGUSR1);

	while (1) {
		FUNC5();
	}
}