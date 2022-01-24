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
struct TYPE_5__ {int p_lflag; scalar_t__ p_transholder; } ;

/* Variables and functions */
 int P_LINTRANSIT ; 
 int P_LTRANSCOMMIT ; 
 int P_LTRANSWAIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 

void
FUNC5(proc_t p, int locked)
{
	if (locked == 0)
		FUNC2(p);

	FUNC0 ((p->p_lflag & P_LINTRANSIT) == P_LINTRANSIT);
	FUNC0 (p->p_transholder == FUNC1());
	p->p_lflag |= P_LTRANSCOMMIT;

	if ((p->p_lflag & P_LTRANSWAIT) == P_LTRANSWAIT) {
		p->p_lflag &= ~P_LTRANSWAIT;
		FUNC4(&p->p_lflag);
	}
	if (locked == 0)
		FUNC3(p);
}