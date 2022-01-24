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
typedef  int /*<<< orphan*/  u_int32_t ;
struct proc {int /*<<< orphan*/  p_fpdrainwait; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int FUNC2 (struct proc*,int /*<<< orphan*/ *,int,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct proc *p, u_int32_t *ibits, int nfd)
{
	int error;
	int need_wakeup = 0;

	FUNC0(p);
	error =  FUNC2(p, ibits, nfd, nfd, &need_wakeup, 0);
	FUNC1(p);
	if (need_wakeup) {
		FUNC3(&p->p_fpdrainwait);
	}
	return (error);
}