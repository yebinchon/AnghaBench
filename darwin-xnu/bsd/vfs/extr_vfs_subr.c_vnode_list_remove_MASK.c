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
typedef  TYPE_1__* vnode_t ;
struct TYPE_5__ {int /*<<< orphan*/  v_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void
FUNC5(vnode_t vp)
{
#if DIAGNOSTIC
	lck_mtx_assert(&vp->v_lock, LCK_MTX_ASSERT_OWNED);
#endif
        /*
	 * we want to avoid taking the list lock
	 * in the case where we're not on the free
	 * list... this will be true for most
	 * directories and any currently in use files
	 *
	 * we're guaranteed that we can't go from
	 * the not-on-list state to the on-list 
	 * state since we hold the vnode lock...
	 * all calls to vnode_list_add are done
	 * under the vnode lock... so we can
	 * check for that condition (the prevelant one)
	 * without taking the list lock
	 */
	if (FUNC0(vp)) {
	        FUNC2();
		/*
		 * however, we're not guaranteed that
		 * we won't go from the on-list state
		 * to the not-on-list state until we
		 * hold the vnode_list_lock... this 
		 * is due to "new_vnode" removing vnodes
		 * from the free list uder the list_lock
		 * w/o the vnode lock... so we need to
		 * check again whether we're currently
		 * on the free list
		 */
		FUNC3(vp);

		FUNC4();
	}
}