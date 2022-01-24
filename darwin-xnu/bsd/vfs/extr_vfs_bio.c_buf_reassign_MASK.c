#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* vnode_t ;
struct buflists {int dummy; } ;
typedef  TYPE_3__* buf_t ;
struct TYPE_8__ {scalar_t__ le_next; } ;
struct TYPE_10__ {int /*<<< orphan*/  b_flags; TYPE_1__ b_vnbufs; } ;
struct TYPE_9__ {struct buflists v_cleanblkhd; struct buflists v_dirtyblkhd; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_DELWRI ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ NOLIST ; 
 int /*<<< orphan*/  buf_mtxp ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,struct buflists*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6(buf_t bp, vnode_t newvp)
{
	struct buflists *listheadp;

	if (newvp == NULL) {
		FUNC5("buf_reassign: NULL");
		return;
	}
	FUNC3(buf_mtxp);

	/*
	 * Delete from old vnode list, if on one.
	 */
	if (bp->b_vnbufs.le_next != NOLIST)
		FUNC2(bp);
	/*
	 * If dirty, put on list of dirty buffers;
	 * otherwise insert onto list of clean buffers.
	 */
	if (FUNC0(bp->b_flags, B_DELWRI))
		listheadp = &newvp->v_dirtyblkhd;
	else
		listheadp = &newvp->v_cleanblkhd;
	FUNC1(bp, listheadp);

	FUNC4(buf_mtxp);
}