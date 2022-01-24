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
struct vnode {int /*<<< orphan*/  v_lflag; scalar_t__ v_usecount; scalar_t__ v_iocount; } ;

/* Variables and functions */
 int /*<<< orphan*/  VL_MARKTERM ; 
 int /*<<< orphan*/  FUNC0 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*) ; 

int
FUNC4(struct vnode *vp)
{
	FUNC1(vp);

	if (vp->v_iocount || vp->v_usecount) {
		vp->v_lflag |= VL_MARKTERM;
		FUNC3(vp);
		return(0);
	} 
	FUNC0(vp);
	FUNC2(vp, 1, 0, 0);

	FUNC3(vp);

	return (1);
}