#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct proc {int /*<<< orphan*/  p_klist; } ;
struct TYPE_2__ {int /*<<< orphan*/  p_proc; } ;
struct knote {TYPE_1__ kn_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct knote*) ; 
 int /*<<< orphan*/  PROC_NULL ; 
 struct knote* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

void
FUNC4(struct proc *p)
{
	struct knote *kn = NULL;

	/*
	 * Clear the proc's klist to avoid references after the proc is reaped.
	 */
	FUNC2();
	while ((kn = FUNC1(&p->p_klist))) {
		kn->kn_ptr.p_proc = PROC_NULL;
		FUNC0(&p->p_klist, kn);
	}
	FUNC3();
}