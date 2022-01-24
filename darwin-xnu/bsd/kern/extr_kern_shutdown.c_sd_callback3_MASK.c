#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vfs_context_t ;
struct sd_iterargs {int setsdstate; int /*<<< orphan*/  activecount; } ;
typedef  TYPE_1__* proc_t ;
struct TYPE_6__ {int p_shutdownstate; scalar_t__ p_stat; int /*<<< orphan*/  p_pid; int /*<<< orphan*/  p_comm; scalar_t__ exit_thread; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BSD_PROC_FRCEXIT ; 
 int /*<<< orphan*/  DBG_BSD_PROC ; 
 int DBG_FUNC_NONE ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int PROC_RETURNED ; 
 scalar_t__ SZOMB ; 
 int /*<<< orphan*/  THREAD_CONTINUE_NULL ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int
FUNC10(proc_t p, void * args)
{
	struct sd_iterargs * sd = (struct sd_iterargs *)args;
	vfs_context_t ctx = FUNC9();

	int setsdstate = sd->setsdstate;

	FUNC5(p);
	p->p_shutdownstate = setsdstate;
	if (p->p_stat != SZOMB) {
	       /*
		* NOTE: following code ignores sig_lock and plays
		* with exit_thread correctly.  This is OK unless we
		* are a multiprocessor, in which case I do not
		* understand the sig_lock.  This needs to be fixed.
		* XXX
		*/
		if (p->exit_thread) {	/* someone already doing it */
			FUNC6(p);
			/* give him a chance */
			FUNC8(THREAD_CONTINUE_NULL);
		} else {
			p->exit_thread = FUNC2();
			FUNC4(".");

			FUNC7(ctx, "%s[%d] had to be forced closed with exit1().\n", p->p_comm, p->p_pid);

			FUNC6(p);
			FUNC1(FUNC0(DBG_BSD_PROC, BSD_PROC_FRCEXIT) | DBG_FUNC_NONE,
					      p->p_pid, 0, 1, 0, 0);
			sd->activecount++;
			FUNC3(p, 1, (int *)NULL);
		}
	} else {
		FUNC6(p);
	}

	return PROC_RETURNED;
}