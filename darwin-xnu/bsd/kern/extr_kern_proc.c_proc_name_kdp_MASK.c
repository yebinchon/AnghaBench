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
typedef  int /*<<< orphan*/  task_t ;
typedef  TYPE_1__* proc_t ;
struct TYPE_4__ {int /*<<< orphan*/ * p_comm; int /*<<< orphan*/ * p_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 TYPE_1__* PROC_NULL ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC3(task_t t, char * buf, int size)
{
	proc_t p = FUNC1(t);
	if (p == PROC_NULL)
		return;

	if ((size_t)size > sizeof(p->p_comm))
		FUNC2(buf, &p->p_name[0], FUNC0((int)sizeof(p->p_name), size));
	else
		FUNC2(buf, &p->p_comm[0], FUNC0((int)sizeof(p->p_comm), size));
}