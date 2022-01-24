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
struct sd_iterargs {int signo; int setsdstate; int countproc; int /*<<< orphan*/  activecount; } ;
typedef  TYPE_1__* proc_t ;
struct TYPE_6__ {int p_shutdownstate; scalar_t__ p_stat; int /*<<< orphan*/  p_listflag; } ;

/* Variables and functions */
 int PROC_RETURNED ; 
 int /*<<< orphan*/  P_LIST_EXITCOUNT ; 
 scalar_t__ SZOMB ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  proc_shutdown_exitcount ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 

__attribute__((used)) static int
FUNC5(proc_t p, void * args)
{
	struct sd_iterargs * sd = (struct sd_iterargs *)args;
	int signo = sd->signo;
	int setsdstate = sd->setsdstate;
	int countproc = sd->countproc;

	FUNC2(p);
	p->p_shutdownstate = setsdstate;
	if (p->p_stat != SZOMB) {
		FUNC3(p);
		if (countproc != 0) {
			FUNC0();
			p->p_listflag |= P_LIST_EXITCOUNT;
			proc_shutdown_exitcount++;
			FUNC1();
		}

		FUNC4(p, signo);
		if (countproc !=  0)
			sd->activecount++;
	} else {
		FUNC3(p);
	}

	return PROC_RETURNED;
}