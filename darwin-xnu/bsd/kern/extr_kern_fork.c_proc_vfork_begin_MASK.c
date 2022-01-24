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
struct TYPE_5__ {int /*<<< orphan*/  p_vforkcnt; int /*<<< orphan*/  p_lflag; } ;

/* Variables and functions */
 int /*<<< orphan*/  P_LVFORK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void
FUNC2(proc_t parent_proc)
{
	FUNC0(parent_proc);
	parent_proc->p_lflag  |= P_LVFORK;
	parent_proc->p_vforkcnt++;
	FUNC1(parent_proc);
}