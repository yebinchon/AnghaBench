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
typedef  int pid_t ;

/* Variables and functions */
 char* _PATH_BSHELL ; 
 int FUNC0 (int*,char**,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(const char *command) {
	pid_t pid = -1;
	int exit_status = 0;
	const char *argv[] = {
		_PATH_BSHELL,
		"-c",
		command,
		NULL
	};

	int rc = FUNC0(&pid, (char **)(void *)argv, false, NULL, NULL);
	if (rc != 0) {
		return -1;
	}
	if (!FUNC1(pid, &exit_status, NULL, 30)) {
		if (exit_status != 0) {
			return exit_status;
		}
		return -1;
	}

	return exit_status;
}