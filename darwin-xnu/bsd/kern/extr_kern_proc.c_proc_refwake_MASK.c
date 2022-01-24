#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* proc_t ;
struct TYPE_3__ {int /*<<< orphan*/  p_listflag; } ;

/* Variables and functions */
 int /*<<< orphan*/  P_LIST_REFWAIT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(proc_t p)
{
	FUNC0();
	p->p_listflag &= ~P_LIST_REFWAIT;
	FUNC2(&p->p_listflag);
	FUNC1();
}