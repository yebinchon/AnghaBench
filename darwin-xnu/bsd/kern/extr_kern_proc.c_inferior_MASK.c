#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* proc_t ;
struct TYPE_4__ {scalar_t__ p_pid; struct TYPE_4__* p_pptr; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

int
FUNC3(proc_t p)
{
	int retval = 0;

	FUNC1();
	for (; p != FUNC0(); p = p->p_pptr)
		if (p->p_pid == 0) 
			goto out;
	retval = 1;
out:
	FUNC2();
	return(retval);
}