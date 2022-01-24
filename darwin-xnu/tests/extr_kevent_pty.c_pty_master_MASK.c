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
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  TIMEOUT_SECS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC6(void)
{
	pid_t child_pid;
	int ret;

	child_pid = FUNC2();
	if (child_pid == 0) {
		FUNC0();
	}
	ret = FUNC3(child_pid, child_pid);
	if (ret < 0) {
		FUNC1(1);
	}
	ret = FUNC5(STDIN_FILENO, child_pid);
	if (ret < 0) {
		FUNC1(1);
	}

	FUNC4(TIMEOUT_SECS);
	FUNC1(1);
}