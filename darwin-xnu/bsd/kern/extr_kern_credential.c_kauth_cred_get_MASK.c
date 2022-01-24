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
struct uthread {scalar_t__ uu_ucred; } ;
struct proc {int dummy; } ;
typedef  struct proc* proc_t ;
typedef  scalar_t__ kauth_cred_t ;

/* Variables and functions */
 scalar_t__ NOCRED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct uthread* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct proc*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

kauth_cred_t
FUNC6(void)
{
	struct proc *p;
	struct uthread *uthread;

	uthread = FUNC2(FUNC0());
	/* sanity */
	if (uthread == NULL)
		FUNC5("thread wants credential but has no BSD thread info");
	/*
	 * We can lazy-bind credentials to threads, as long as their processes
	 * have them.
	 *
	 * XXX If we later inline this function, the code in this block
	 * XXX should probably be called out in a function.
	 */
	if (uthread->uu_ucred == NOCRED) {
		if ((p = (proc_t) FUNC1(FUNC3(FUNC0()))) == NULL)
			FUNC5("thread wants credential but has no BSD process");
		uthread->uu_ucred = FUNC4(p);
	}
	return(uthread->uu_ucred);
}