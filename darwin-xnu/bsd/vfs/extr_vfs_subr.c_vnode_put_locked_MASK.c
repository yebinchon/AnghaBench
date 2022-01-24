#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vnode_t ;
typedef  int /*<<< orphan*/  vfs_context_t ;
struct TYPE_11__ {int v_iocount; scalar_t__ v_usecount; int v_lflag; int /*<<< orphan*/  v_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int VL_DEAD ; 
 int VL_MARKTERM ; 
 int VL_NEEDINACTIVE ; 
 int VL_TERMINATE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

int
FUNC10(vnode_t vp)
{
	vfs_context_t ctx = FUNC3();	/* hoist outside loop */

#if DIAGNOSTIC
	lck_mtx_assert(&vp->v_lock, LCK_MTX_ASSERT_OWNED);
#endif
retry:
	if (vp->v_iocount < 1) 
		FUNC2("vnode_put(%p): iocount < 1", vp);

	if ((vp->v_usecount > 0) || (vp->v_iocount > 1))  {
		FUNC4(vp);
		return(0);
	}
	if ((vp->v_lflag & (VL_DEAD | VL_NEEDINACTIVE)) == VL_NEEDINACTIVE) {

	        vp->v_lflag &= ~VL_NEEDINACTIVE;
	        FUNC9(vp);

		FUNC0(vp, ctx);

		FUNC7(vp);
		/*
		 * because we had to drop the vnode lock before calling
		 * VNOP_INACTIVE, the state of this vnode may have changed...
		 * we may pick up both VL_MARTERM and either
		 * an iocount or a usecount while in the VNOP_INACTIVE call
		 * we don't want to call vnode_reclaim_internal on a vnode
		 * that has active references on it... so loop back around
		 * and reevaluate the state
		 */
		goto retry;
	}
        vp->v_lflag &= ~VL_NEEDINACTIVE;

	if ((vp->v_lflag & (VL_MARKTERM | VL_TERMINATE | VL_DEAD)) == VL_MARKTERM) {
	        FUNC6(vp);
	        FUNC8(vp, 1, 1, 0);
	}
	FUNC4(vp);
	FUNC5(vp);

	return(0);
}