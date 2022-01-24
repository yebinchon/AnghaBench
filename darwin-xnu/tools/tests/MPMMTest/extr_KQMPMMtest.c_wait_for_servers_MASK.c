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
typedef  int /*<<< orphan*/  mach_port_t ;
typedef  scalar_t__ kern_return_t ;

/* Variables and functions */
 scalar_t__ KERN_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int num_servers ; 
 int /*<<< orphan*/ * server_port_name ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void
FUNC7(void)
{
	int		i;
	int		retry_count = 10;
	mach_port_t	bsport, servport;
	kern_return_t	ret;

	/* find server port */
	ret = FUNC5(FUNC4(), &bsport);
	if (KERN_SUCCESS != ret) {
		FUNC3("task_get_bootstrap_port(): ", ret);
		FUNC1(1);
	}

	while (retry_count-- > 0) {
		for (i = 0; i < num_servers; i++) {
			ret = FUNC0(bsport,
					server_port_name[i],
					&servport); 
			if (ret != KERN_SUCCESS) {
				break;
			}
		}
		if (ret == KERN_SUCCESS)
			return;
		FUNC6(100 * 1000);	/* 100ms */
	}
	FUNC2(stderr, "Server(s) failed to register\n");
	FUNC1(1);
}