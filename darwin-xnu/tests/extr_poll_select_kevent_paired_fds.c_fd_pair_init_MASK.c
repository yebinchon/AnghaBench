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
typedef  enum fd_pair { ____Placeholder_fd_pair } fd_pair ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNIX ; 
#define  FIFO_PAIR 131 
 int O_NONBLOCK ; 
 int O_RDONLY ; 
 int O_WRONLY ; 
#define  PIPE_PAIR 130 
#define  PTY_PAIR 129 
#define  SOCKET_PAIR 128 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  T_QUIET ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (char*,int) ; 
 int FUNC7 (int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void
FUNC10(enum fd_pair fd_pair, int *rd_fd, int *wr_fd)
{
	switch (fd_pair) {
	case PTY_PAIR:
		FUNC3(FUNC7(rd_fd, wr_fd, NULL, NULL, NULL),
				NULL);
		break;

	case FIFO_PAIR: {
		char fifo_path[] = "/tmp/async-io-fifo.XXXXXX";
		T_QUIET; FUNC2(FUNC5(fifo_path), NULL);

		FUNC3(FUNC4(fifo_path, 0700), "mkfifo(%s, 0700)",
				fifo_path);
		/*
		 * Opening the read side of a pipe will block until the write
		 * side opens -- use O_NONBLOCK.
		 */
		*rd_fd = FUNC6(fifo_path, O_RDONLY | O_NONBLOCK);
		T_QUIET; FUNC3(*rd_fd, "open(... O_RDONLY)");
		*wr_fd = FUNC6(fifo_path, O_WRONLY | O_NONBLOCK);
		T_QUIET; FUNC3(*wr_fd, "open(... O_WRONLY)");
		break;
	}

	case PIPE_PAIR: {
		int pipe_fds[2];
		FUNC3(FUNC8(pipe_fds), NULL);
		*rd_fd = pipe_fds[0];
		*wr_fd = pipe_fds[1];
		break;
	}

	case SOCKET_PAIR: {
		int sock_fds[2];
		FUNC3(FUNC9(AF_UNIX, SOCK_STREAM, 0, sock_fds),
				NULL);
		*rd_fd = sock_fds[0];
		*wr_fd = sock_fds[1];
		break;
	}

	default:
		FUNC0("unknown descriptor pair type: %d", fd_pair);
		break;
	}

	T_QUIET; FUNC1(*rd_fd, -1, "reading descriptor");
	T_QUIET; FUNC1(*wr_fd, -1, "writing descriptor");
}