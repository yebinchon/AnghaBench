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
struct TYPE_5__ {scalar_t__ p_vforkcnt; int /*<<< orphan*/  p_lflag; } ;

/* Variables and functions */
 int /*<<< orphan*/  P_LVFORK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void
FUNC3(proc_t parent_proc)
{
	FUNC1(parent_proc);
	parent_proc->p_vforkcnt--;
	if (parent_proc->p_vforkcnt < 0)
		FUNC0("vfork cnt is -ve");
	if (parent_proc->p_vforkcnt == 0)
		parent_proc->p_lflag  &= ~P_LVFORK;
	FUNC2(parent_proc);
}