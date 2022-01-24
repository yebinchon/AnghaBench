#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ thread_t ;
struct uthread {int uu_flag; struct proc* uu_proc; } ;
struct proc {int p_lflag; void* p_vforkact; } ;

/* Variables and functions */
 int P_LINVFORK ; 
 int UT_VFORK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 struct proc* kernproc ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

struct proc *
FUNC5(void)
{
	/* Never returns a NULL */
	struct uthread * ut;
	struct proc * p;
	thread_t thread = FUNC1();

	ut = (struct uthread *)FUNC3(thread);
	if (ut && (ut->uu_flag & UT_VFORK) && ut->uu_proc) {
		p = ut->uu_proc;
		if ((p->p_lflag & P_LINVFORK) == 0)
			FUNC4("returning child proc not under vfork");
		if (p->p_vforkact != (void *)thread)
			FUNC4("returning child proc which is not cur_act");
		return (p);
	}

	p = (struct proc *)FUNC2(FUNC0());

	if (p == NULL)
		return (kernproc);

	return (p);
}