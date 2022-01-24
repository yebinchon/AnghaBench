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
struct TYPE_3__ {int /*<<< orphan*/  in_fd; int /*<<< orphan*/  out_fd; int /*<<< orphan*/  sem; } ;
struct TYPE_4__ {int wr_kind; TYPE_1__ wr_wait; } ;

/* Variables and functions */
#define  PROCESS_WRITER 129 
#define  THREAD_WRITER 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  T_QUIET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__ shared ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC5(void)
{
	FUNC1("waking writer");

	switch (shared.wr_kind) {
	case THREAD_WRITER:
		FUNC1("signal shared.wr_wait.sem");
		FUNC3(shared.wr_wait.sem);
		break;
	case PROCESS_WRITER: {
		char tmp = 'a';
		FUNC2(shared.wr_wait.out_fd);
		T_QUIET; FUNC0(FUNC4(
				shared.wr_wait.in_fd, &tmp, 1), NULL);
		break;
	}
	}
}