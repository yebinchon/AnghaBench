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
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*,char* const) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char* const) ; 
 int /*<<< orphan*/  FUNC2 (char*,char* const,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,char* const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int*,int*,int) ; 

int
FUNC5(char * const command[]) {
	pid_t pid           = 0;
	int launch_tool_ret = 0;
	bool waitpid_ret    = true;
	int status          = 0;
	int signal          = 0;
	int timeout         = 30;

	launch_tool_ret = FUNC3(&pid, command, false, NULL, NULL);
	FUNC0(launch_tool_ret, 0, "launch tool: %s", command[0]);
	if(launch_tool_ret != 0) {
		return 1;
	}

	waitpid_ret = FUNC4(pid, &status, &signal, timeout);
	FUNC1(waitpid_ret, "%s should succeed", command[0]);
	if(waitpid_ret == false) {
		if(status != 0) {
			FUNC2("%s exited %d", command[0], status);
		}
		if(signal != 0) {
			FUNC2("%s received signal %d", command[0], signal);
		}
		return 1;
	}

	return 0;
}