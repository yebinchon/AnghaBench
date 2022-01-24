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
 int /*<<< orphan*/  F_SETFL ; 
 int O_NOCTTY ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  T_QUIET ; 
 int /*<<< orphan*/  T_SETUPBEGIN ; 
 int /*<<< orphan*/  T_SETUPEND ; 
 int /*<<< orphan*/  T_WITH_ERRNO ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ FUNC11 (int) ; 
 int FUNC12 (int) ; 
 char* FUNC13 (int) ; 
 scalar_t__ FUNC14 (char*) ; 
 int FUNC15 (int) ; 
 scalar_t__ FUNC16 (int) ; 

void
FUNC17(int do_revoke)
{
	int master_fd;
	char *slave_pty;
	pid_t pid;

	T_WITH_ERRNO;
	T_QUIET;

	T_SETUPBEGIN;
	
	slave_pty= NULL;
	FUNC1(master_fd = FUNC12(O_RDWR | O_NOCTTY),
	    NULL);
	(void)FUNC8(master_fd, F_SETFL, O_NONBLOCK);
	FUNC1(FUNC11(master_fd), NULL);
	FUNC1(FUNC16(master_fd), NULL);
	slave_pty= FUNC13(master_fd);
	FUNC0(slave_pty, NULL);
	FUNC3("slave pty is %s\n", slave_pty);

	T_SETUPEND;
	
	/*
	 * We get the stdin and stdout redirection but we don't have visibility
	 * into the child (nor can we wait for it). To get around that, we fork
	 * and only let the parent to the caller and the child exits before
	 * returning to the caller.
	 */
	FUNC1(pid = FUNC9(), NULL);
	
	if (pid == 0) { /* child */
		FUNC1(FUNC5(master_fd), NULL);
		FUNC10(slave_pty);

		/*
		 * These tests are for testing revoke and read hangs. This
		 * revoke can be explicit by a revoke(2) system call (test 2)
		 * or as part of exit(2) of the session leader (test 1).
		 * The exit hang is the common hang and can be fixed
		 * independently but fixing the revoke(2) hang requires us make
		 * changes in the tcsetpgrp path ( which also fixes the exit
		 * hang). In essence, we have 2 fixes. One which only addresses
		 * the exit hang and one which fixes both.
		 */
		if (do_revoke) {
			/* This should not hang for the test to pass .. */
			FUNC1(FUNC14(slave_pty), NULL);
		}
		/*
		 * This child has the same dt_helper variables as its parent
		 * The way dt_fork_helpers work if we don't exit() from here,
		 * we will be killing the parent. So we have to exit() and not
		 * let the dt_fork_helpers continue.
		 * If we didn't do the revoke(2), This test passes if this exit
		 * doesn't hang waiting for its child to finish reading.
		 */
		FUNC7(0);
	}

	int status;
	int sig;

	FUNC6(pid, &status, &sig, 0);
	if (sig) {
		FUNC2("Test failed because child received signal %s\n",
		       FUNC15(sig));
	} else if (status) {
		FUNC2("Test failed because child exited with status %d\n",
		       status);
	} else {
		FUNC4("test_passed\n");
	}
	/*
	 * we can let this process proceed with the regular darwintest process
	 * termination and cleanup.
	 */
}