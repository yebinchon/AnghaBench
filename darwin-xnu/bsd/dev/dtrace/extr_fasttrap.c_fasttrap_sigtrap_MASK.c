#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * uthread_t ;
typedef  scalar_t__ user_addr_t ;
struct TYPE_8__ {scalar_t__ si_addr; int /*<<< orphan*/  si_code; int /*<<< orphan*/  si_signo; } ;
struct TYPE_9__ {TYPE_1__ sq_info; } ;
typedef  TYPE_2__ sigqueue_t ;
struct TYPE_10__ {int /*<<< orphan*/  p_lock; } ;
typedef  TYPE_3__ proc_t ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  SIGTRAP ; 
 int /*<<< orphan*/  TRAP_DTRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_2__*) ; 

void
FUNC6(proc_t *p, uthread_t t, user_addr_t pc)
{
#pragma unused(p, t, pc)

#if !defined(__APPLE__)
	sigqueue_t *sqp = FUNC1(sizeof (sigqueue_t), KM_SLEEP);

	sqp->sq_info.si_signo = SIGTRAP;
	sqp->sq_info.si_code = TRAP_DTRACE;
	sqp->sq_info.si_addr = (caddr_t)pc;

	FUNC2(&p->p_lock);
	FUNC5(p, t, sqp);
	FUNC3(&p->p_lock);

	if (t != NULL)
		FUNC0(t);
#endif /* __APPLE__ */

	FUNC4("fasttrap_sigtrap called with no implementation.\n");
}