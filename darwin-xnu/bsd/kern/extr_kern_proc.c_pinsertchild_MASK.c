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
struct pgrp {int dummy; } ;
typedef  TYPE_1__* proc_t ;
struct TYPE_9__ {int /*<<< orphan*/  p_listflag; int /*<<< orphan*/  p_children; int /*<<< orphan*/  p_childrencnt; scalar_t__ p_xhighbits; int /*<<< orphan*/  p_uniqueid; int /*<<< orphan*/  p_puniqueid; int /*<<< orphan*/  p_pid; int /*<<< orphan*/  p_ppid; struct TYPE_9__* p_pptr; int /*<<< orphan*/  p_evlist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  P_LIST_INCREATE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  allproc ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  p_list ; 
 int /*<<< orphan*/  p_sibling ; 
 int /*<<< orphan*/  FUNC4 (struct pgrp*) ; 
 int /*<<< orphan*/  FUNC5 (struct pgrp*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 struct pgrp* FUNC8 (TYPE_1__*) ; 

void
FUNC9(proc_t parent, proc_t child)
{
	struct pgrp * pg;

	FUNC0(&child->p_children);
	FUNC2(&child->p_evlist);
	child->p_pptr = parent;
	child->p_ppid = parent->p_pid;
	child->p_puniqueid = parent->p_uniqueid;
	child->p_xhighbits = 0;

	pg = FUNC8(parent);
	FUNC5(pg, parent, child);
	FUNC4(pg);

	FUNC6();
	
#if CONFIG_MEMORYSTATUS
	memorystatus_add(child, TRUE);
#endif
	
	parent->p_childrencnt++;
	FUNC1(&parent->p_children, child, p_sibling);

	FUNC1(&allproc, child, p_list);
	/* mark the completion of proc creation */
	child->p_listflag &= ~P_LIST_INCREATE;

	FUNC7();
}