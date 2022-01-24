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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  SIGTTIN ; 
 int /*<<< orphan*/  SIGTTOU ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  handle_sigttin ; 
 int FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int,char*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC12 (int,scalar_t__) ; 
 int FUNC13 (int,char*,int) ; 

int
FUNC14(char *pty_name)
{
	int sock_fd[2];
	int pty_fd;
	pid_t pid;
	char buf[10];

	/*
	 * We use this to handshake certain actions between this process and its
	 * child.
	 */
	FUNC0(FUNC11(AF_UNIX, SOCK_STREAM, 0, sock_fd),
	   NULL);
	
	/*
	 * New session, lose any existing controlling terminal and become
	 * session leader.
	 */
	FUNC0(FUNC8(), NULL);
	
	/* now open pty, become controlling terminal of new session */
	FUNC0(pty_fd = FUNC5(pty_name, O_RDWR), NULL);
	
	FUNC0(pid = FUNC3(), NULL);

	if (pid == 0) { /* child */
		int pty_fd_child;
		char buf[10];
		
		FUNC0(FUNC1(sock_fd[0]), NULL);
		FUNC0(FUNC1(pty_fd), NULL);

		/* Make a new process group for ourselves */
		FUNC0(FUNC7(0, 0), NULL);

		FUNC0(pty_fd_child = FUNC5(pty_name, O_RDWR),
		    NULL);

		/* now let parent know we've done open and setpgid */
		FUNC13(sock_fd[1], "done", sizeof("done"));

		/* wait for parent to set us to the foreground process group */
		FUNC6(sock_fd[1], buf, sizeof(buf));

		/*
		 * We are the foreground process group now so we can read
		 * without getting a SIGTTIN.
		 *
		 * Once we are blocked though (we have a crude 1 second sleep on
		 * the parent to "detect" this), our parent is going to change
		 * us to be in the background.
		 *
		 * We'll be blocked until we get a signal and if that is signal
		 * is SIGTTIN, then the test has passed otherwise the test has
		 * failed.
		 */
		FUNC9(SIGTTIN, handle_sigttin);
		(void)FUNC6(pty_fd_child, buf, sizeof(buf));
		/*
		 * If we get here, we passed, if we get any other signal than
		 * SIGTTIN, we will not reach here.
		 */
		FUNC2(0);
	}
	
	FUNC0(FUNC1(sock_fd[1]), NULL);
	
	/* wait for child to open slave side and set its pgid to its pid */
	FUNC0(FUNC6(sock_fd[0], buf, sizeof(buf)), NULL);
	
	/*
	 * We need this to happen and in the order shown
	 *
	 * parent (pgid = pid)                  child (child_pgid = child_pid)
	 *
	 * 1 - tcsetpgrp(child_pgid)
	 * 2 -                                      block in read()
	 * 3 - tcsetpgrp(pgid)
	 *
	 * making sure 2 happens after 1 is easy, we use a sleep(1) in the
	 * parent to try and ensure 3 happens after 2.
	 */

	FUNC0(FUNC12(pty_fd, pid), NULL);
	
	/* let child know you have set it to be the foreground process group */
	FUNC0(FUNC13(sock_fd[0], "done", sizeof("done")), NULL);
	
	/*
	 * give it a second to do the read of the terminal in response.
	 *
	 * XXX : Find a way to detect that the child is blocked in read(2).
	 */
	FUNC10(1);
	
	/*
	 * now change the foreground process group to ourselves -
	 * Note we are now in the background process group and we need to ignore
	 * SIGTTOU for this call to succeed.
	 *
	 * Hopefully the child has gotten to run and blocked for read on the
	 * terminal in the 1 second we slept.
	 */
	FUNC9(SIGTTOU, SIG_IGN);
	FUNC0(FUNC12(pty_fd, FUNC4()), NULL);

	return (0);
}