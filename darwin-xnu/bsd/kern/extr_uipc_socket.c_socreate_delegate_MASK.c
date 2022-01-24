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
struct socket {int dummy; } ;
struct proc {int dummy; } ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 int ESRCH ; 
 struct proc* PROC_NULL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct proc* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 scalar_t__ FUNC3 () ; 
 int FUNC4 (int,struct socket**,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct proc*) ; 

int
FUNC5(int dom, struct socket **aso, int type, int proto, pid_t epid)
{
	int error = 0;
	struct proc *ep = PROC_NULL;

	if ((FUNC3() != epid) && ((ep = FUNC1(epid)) == PROC_NULL)) {
		error = ESRCH;
		goto done;
	}

	error = FUNC4(dom, aso, type, proto, FUNC0(), 0, ep);

	/*
	 * It might not be wise to hold the proc reference when calling
	 * socreate_internal since it calls soalloc with M_WAITOK
	 */
done:
	if (ep != PROC_NULL)
		FUNC2(ep);

	return (error);
}