#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* proc_t ;
struct TYPE_9__ {scalar_t__ p_childrencnt; scalar_t__ p_stat; int /*<<< orphan*/  p_pid; int /*<<< orphan*/  p_ppid; struct TYPE_9__* p_pptr; int /*<<< orphan*/  p_children; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* PROC_NULL ; 
 int /*<<< orphan*/  SIGCHLD ; 
 scalar_t__ SZOMB ; 
 TYPE_1__* initproc ; 
 int /*<<< orphan*/  p_sibling ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void
FUNC6(proc_t child, proc_t parent, int signallable, int locked)
{
	proc_t oldparent = PROC_NULL;

	if (child->p_pptr == parent)
		return;

	if (locked == 0)
		FUNC3();

	oldparent = child->p_pptr;
#if __PROC_INTERNAL_DEBUG
	if (oldparent == PROC_NULL)
		panic("proc_reparent: process %p does not have a parent\n", child);
#endif

	FUNC1(child, p_sibling);
#if __PROC_INTERNAL_DEBUG
	if (oldparent->p_childrencnt == 0)
		panic("process children count already 0\n");
#endif
	oldparent->p_childrencnt--;
#if __PROC_INTERNAL_DEBUG1
	if (oldparent->p_childrencnt < 0)
		panic("process children count -ve\n");
#endif
	FUNC0(&parent->p_children, child, p_sibling);
	parent->p_childrencnt++;	
	child->p_pptr = parent;
	child->p_ppid = parent->p_pid;

	FUNC4();

	if ((signallable != 0) && (initproc == parent) && (child->p_stat == SZOMB))
		FUNC5(initproc, SIGCHLD);
	if (locked == 1)
		FUNC3();
}