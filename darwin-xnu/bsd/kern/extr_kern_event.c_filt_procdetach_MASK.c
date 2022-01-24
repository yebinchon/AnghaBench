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
struct TYPE_2__ {struct proc* p_proc; } ;
struct knote {TYPE_1__ kn_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct knote*) ; 
 struct proc* PROC_NULL ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void
FUNC3(struct knote *kn)
{
	struct proc *p;

	FUNC1();

	p = kn->kn_ptr.p_proc;
	if (p != PROC_NULL) {
		kn->kn_ptr.p_proc = PROC_NULL;
		FUNC0(&p->p_klist, kn);
	}

	FUNC2();
}