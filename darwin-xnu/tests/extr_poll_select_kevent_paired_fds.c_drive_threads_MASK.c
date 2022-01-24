#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pthread_t ;
typedef  enum write_mode { ____Placeholder_write_mode } write_mode ;
typedef  enum read_mode { ____Placeholder_read_mode } read_mode ;
typedef  enum fd_pair { ____Placeholder_fd_pair } fd_pair ;
struct TYPE_3__ {int /*<<< orphan*/  sem; } ;
struct TYPE_4__ {int fd_pair; int rd_mode; int wr_mode; int /*<<< orphan*/  rd_fd; TYPE_1__ wr_wait; int /*<<< orphan*/  wr_kind; int /*<<< orphan*/  wr_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  SYNC_POLICY_FIFO ; 
 int /*<<< orphan*/  THREAD_WRITER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  T_END ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  T_QUIET ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ shared ; 
 int /*<<< orphan*/  write_to_fd ; 

__attribute__((used)) static void
FUNC9(enum fd_pair fd_pair, enum read_mode rd_mode,
		enum write_mode wr_mode)
{
	pthread_t thread;

	shared.fd_pair = fd_pair;
	shared.rd_mode = rd_mode;
	shared.wr_mode = wr_mode;
	FUNC3(fd_pair, &(shared.rd_fd), &(shared.wr_fd));

	shared.wr_kind = THREAD_WRITER;
	FUNC0(FUNC8(FUNC4(), &shared.wr_wait.sem, SYNC_POLICY_FIFO, 0),
	                      "semaphore_create shared.wr_wait.sem");

	T_QUIET;
	FUNC1(FUNC5(&thread, NULL, write_to_fd, NULL),
			NULL);
	FUNC2("created writer thread");

	FUNC7(shared.rd_fd, fd_pair, rd_mode);

	FUNC1(FUNC6(thread, NULL), NULL);

	T_END;
}