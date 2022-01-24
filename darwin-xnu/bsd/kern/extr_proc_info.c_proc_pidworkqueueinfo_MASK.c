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
struct proc_workqueueinfo {int dummy; } ;
typedef  int /*<<< orphan*/  proc_t ;

/* Variables and functions */
 int ESRCH ; 
 int /*<<< orphan*/  FUNC0 (struct proc_workqueueinfo*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct proc_workqueueinfo*) ; 

int 
FUNC2(proc_t p, struct proc_workqueueinfo *pwqinfo)
{
	int error = 0;

	FUNC0(pwqinfo, sizeof(struct proc_workqueueinfo));

	error = FUNC1(p, pwqinfo);
	if (error)
		return(ESRCH);
	else
		return(0);

}