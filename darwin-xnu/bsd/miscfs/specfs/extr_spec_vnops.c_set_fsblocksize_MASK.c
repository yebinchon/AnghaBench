#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u_int ;
struct vnode {scalar_t__ v_type; int /*<<< orphan*/  v_rdev; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 scalar_t__ VBLK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ nblkdev ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*) ; 

void
FUNC4(struct vnode *vp)
{
	
	if (vp->v_type == VBLK) {
		dev_t dev = (dev_t)vp->v_rdev;
		int maj = FUNC0(dev);

		if ((u_int)maj >= (u_int)nblkdev)
			return;

		FUNC2(vp);
		FUNC1(vp, dev);
		FUNC3(vp);
	}

}