#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vnode_t ;
struct TYPE_8__ {int v_listflag; } ;

/* Variables and functions */
 int VLIST_ASYNC_WORK ; 
 int VLIST_DEAD ; 
 int VLIST_RAGE ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC5(vnode_t vp)
{
	if (FUNC0(vp)) {
		/*
		 * the v_listflag field is
		 * protected by the vnode_list_lock
		 */
	        if (vp->v_listflag & VLIST_RAGE)
		        FUNC4("vnode_list_remove", vp);
		else if (vp->v_listflag & VLIST_DEAD)
		        FUNC2("vnode_list_remove", vp);
		else if (vp->v_listflag & VLIST_ASYNC_WORK)
		        FUNC1("vnode_list_remove", vp);
		else
		        FUNC3("vnode_list_remove", vp);
	}
}