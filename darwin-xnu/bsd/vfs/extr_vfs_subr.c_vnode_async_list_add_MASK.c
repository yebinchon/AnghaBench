#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vnode_t ;
struct TYPE_6__ {int v_lflag; int /*<<< orphan*/  v_listflag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VLIST_ASYNC_WORK ; 
 int VL_DEAD ; 
 int VL_TERMINATE ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  async_work_vnodes ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  v_freelist ; 
 int /*<<< orphan*/  vnode_async_work_list ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(vnode_t vp)
{
	FUNC3();

	if (FUNC1(vp) || (vp->v_lflag & (VL_TERMINATE|VL_DEAD)))
		FUNC2("vnode_async_list_add: %p is in wrong state", vp);

	FUNC0(&vnode_async_work_list, vp, v_freelist);
	vp->v_listflag |= VLIST_ASYNC_WORK;

	async_work_vnodes++;

	FUNC4();

	FUNC5(&vnode_async_work_list);

}