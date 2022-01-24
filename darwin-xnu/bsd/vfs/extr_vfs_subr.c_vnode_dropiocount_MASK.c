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
struct TYPE_5__ {int v_iocount; int v_lflag; } ;

/* Variables and functions */
 int VL_DRAIN ; 
 int VL_SUSPENDED ; 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 

__attribute__((used)) static void
FUNC3 (vnode_t vp)
{
	if (vp->v_iocount < 1)
		FUNC0("vnode_dropiocount(%p): v_iocount < 1", vp);

	vp->v_iocount--;
#ifdef JOE_DEBUG
	record_vp(vp, -1);
#endif
	if ((vp->v_lflag & (VL_DRAIN | VL_SUSPENDED)) && (vp->v_iocount <= 1))
		FUNC2(&vp->v_iocount);
}