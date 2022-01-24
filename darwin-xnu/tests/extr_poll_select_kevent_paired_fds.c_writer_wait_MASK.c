#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_7__ {int /*<<< orphan*/  tv_sec; } ;
struct TYPE_5__ {int /*<<< orphan*/  out_fd; int /*<<< orphan*/  in_fd; int /*<<< orphan*/  sem; } ;
struct TYPE_6__ {int wr_kind; TYPE_1__ wr_wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_OPERATION_TIMED_OUT ; 
#define  PROCESS_WRITER 129 
 TYPE_3__ READ_SETUP_timeout ; 
#define  THREAD_WRITER 128 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  T_QUIET ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_3__) ; 
 TYPE_2__ shared ; 

__attribute__((used)) static void
FUNC7(void)
{
	switch (shared.wr_kind) {
	case THREAD_WRITER:
		FUNC3("wait shared.wr_wait.sem");
		kern_return_t kret = FUNC6(shared.wr_wait.sem, READ_SETUP_timeout);

		if (kret == KERN_OPERATION_TIMED_OUT) {
			FUNC0("THREAD_WRITER semaphore timedout after %d seconds", READ_SETUP_timeout.tv_sec);
		}
		T_QUIET;
		FUNC1(kret, "semaphore_timedwait shared.wr_wait.sem");
		break;

	case PROCESS_WRITER: {
		char tmp;
		FUNC4(shared.wr_wait.in_fd);
		T_QUIET; FUNC2(FUNC5(
				shared.wr_wait.out_fd, &tmp, 1), NULL);
		break;
	}
	}

	FUNC3("writer woken up, starting to write");
}