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
struct TYPE_5__ {int p_pcaction; } ;

/* Variables and functions */
 int ESRCH ; 
 TYPE_1__* PROC_NULL ; 
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

int
FUNC2(int pid, int * pcontrolp)
{
	proc_t p;

	p = FUNC0(pid);
	if (p == PROC_NULL)
		return(ESRCH);
	if (pcontrolp != NULL)
		*pcontrolp = p->p_pcaction;

	FUNC1(p);
	return(0);
}