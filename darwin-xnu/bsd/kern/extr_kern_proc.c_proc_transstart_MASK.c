#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* proc_t ;
struct TYPE_5__ {int p_lflag; int /*<<< orphan*/  p_transholder; int /*<<< orphan*/  p_mlock; } ;

/* Variables and functions */
 int EDEADLK ; 
 int P_LINTRANSIT ; 
 int P_LTRANSCOMMIT ; 
 int P_LTRANSWAIT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

int
FUNC4(proc_t p, int locked, int non_blocking)
{
	if (locked == 0)
		FUNC2(p);
	while ((p->p_lflag & P_LINTRANSIT) == P_LINTRANSIT) {
		if (((p->p_lflag & P_LTRANSCOMMIT) == P_LTRANSCOMMIT) || non_blocking) {
			if (locked == 0)
				FUNC3(p);
			return EDEADLK;
		}
		p->p_lflag |= P_LTRANSWAIT;
		FUNC1(&p->p_lflag, &p->p_mlock, 0, "proc_signstart", NULL);
	}
	p->p_lflag |= P_LINTRANSIT;
	p->p_transholder = FUNC0();
	if (locked == 0)
		FUNC3(p);
	return 0;
}