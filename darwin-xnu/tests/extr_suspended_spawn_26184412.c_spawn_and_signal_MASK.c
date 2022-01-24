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
typedef  int /*<<< orphan*/  posix_spawnattr_t ;
typedef  int pid_t ;

/* Variables and functions */
 int EX_OK ; 
 int /*<<< orphan*/  POSIX_SPAWN_START_SUSPENDED ; 
 int SIGKILL ; 
 int /*<<< orphan*/  FUNC0 (int,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  T_QUIET ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int WNOHANG ; 
 int FUNC6 (int) ; 
 int WUNTRACED ; 
 int /*<<< orphan*/  _IONBF ; 
 int FUNC7 (int,int) ; 
 int FUNC8 (int*,char* const,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char* const*,char**) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC14 (int,int*,int) ; 

__attribute__((used)) static void
FUNC15(int signal)
{
	/* do not buffer output to stdout */
	FUNC13(stdout, NULL, _IONBF, 0);

	int ret;
	posix_spawnattr_t attr;

	ret = FUNC10(&attr);
	T_QUIET;
	FUNC1(ret, "posix_spawnattr_init");

	ret = FUNC11(&attr, POSIX_SPAWN_START_SUSPENDED);
	T_QUIET;
	FUNC1(ret, "posix_spawnattr_setflags");

	char * const    prog = "/usr/bin/true";
	char * const    argv_child[] = { prog, NULL };
	pid_t           child_pid;
	extern char   **environ;

	ret = FUNC8(&child_pid, prog, NULL, &attr, argv_child, environ);
	FUNC1(ret, "posix_spawn");

	FUNC12("parent: spawned child with pid %d\n", child_pid);

	ret = FUNC9(&attr);
	T_QUIET;
	FUNC1(ret, "posix_spawnattr_destroy");

	int status = 0;
	int waitpid_result = FUNC14(child_pid, &status, WUNTRACED|WNOHANG);
	FUNC1(waitpid_result, "waitpid");

	FUNC0(waitpid_result, child_pid, "waitpid should return child we spawned");

	FUNC0(FUNC3(status), 0, "before SIGCONT: must not have exited");
	FUNC0(FUNC5(status), 1, "before SIGCONT: must be stopped");

	FUNC12("parent: continuing child process\n");

	ret = FUNC7(child_pid, signal);
	FUNC1(ret, "kill(signal)");

	FUNC12("parent: waiting for child process\n");

	status = 0;
	waitpid_result = FUNC14(child_pid, &status, 0);
	FUNC1(waitpid_result, "waitpid");

	FUNC0(waitpid_result, child_pid, "waitpid should return child we spawned");

	if (signal == SIGKILL) {
		FUNC0(FUNC4(status), 1, "child should have exited due to signal");
		FUNC0(FUNC6(status), SIGKILL, "child should have exited due to SIGKILL");
	} else {
		FUNC0(FUNC3(status), 1, "child should have exited normally");
		FUNC0(FUNC2(status), EX_OK, "child should have exited with success");
	}

	FUNC12("wait returned with pid %d, status %d\n", ret, status);
}