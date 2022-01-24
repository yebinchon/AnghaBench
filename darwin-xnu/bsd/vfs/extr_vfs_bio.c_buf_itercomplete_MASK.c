#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vnode_t ;
struct buflists {int dummy; } ;
typedef  int /*<<< orphan*/  buf_t ;
struct TYPE_3__ {int v_iterblkflags; struct buflists v_cleanblkhd; struct buflists v_dirtyblkhd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buflists*) ; 
 int /*<<< orphan*/  FUNC1 (struct buflists*) ; 
 int /*<<< orphan*/  FUNC2 (struct buflists*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int VBI_DIRTY ; 
 int VBI_ITER ; 
 int VBI_ITERWANT ; 
 int /*<<< orphan*/  b_vnbufs ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 

__attribute__((used)) static void
FUNC5(vnode_t vp, struct buflists *iterheadp, int flags)
{
	struct buflists * listheadp;
	buf_t bp;

	if (flags & VBI_DIRTY)
		listheadp = &vp->v_dirtyblkhd;
	else
		listheadp = &vp->v_cleanblkhd;

	while (!FUNC0(iterheadp)) {
		bp = FUNC1(iterheadp);
		FUNC3(bp, b_vnbufs);
		FUNC2(listheadp, bp, b_vnbufs);
	}
	vp->v_iterblkflags &= ~VBI_ITER;

	if  (vp->v_iterblkflags & VBI_ITERWANT) 	{
		vp->v_iterblkflags &= ~VBI_ITERWANT;
		FUNC4(&vp->v_iterblkflags);
	}
}