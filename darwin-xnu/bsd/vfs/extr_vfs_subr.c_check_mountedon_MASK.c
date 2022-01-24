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
typedef  enum vtype { ____Placeholder_vtype } vtype ;
typedef  scalar_t__ dev_t ;
struct TYPE_8__ {scalar_t__ v_rdev; int v_type; int v_id; scalar_t__ v_usecount; int v_iocount; struct TYPE_8__* v_specnext; } ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__** speclisth ; 
 int FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

int
FUNC8(dev_t dev, enum vtype type, int  *errorp)
{
	vnode_t	vp;
	int rc = 0;
	int vid;

loop:
	FUNC1();
	for (vp = speclisth[FUNC0(dev)]; vp; vp = vp->v_specnext) {
		if (dev != vp->v_rdev || type != vp->v_type)
			continue;
		vid = vp->v_id;
		FUNC2();
		if (FUNC4(vp,vid))
			goto loop;
		FUNC5(vp);
		if ((vp->v_usecount > 0) || (vp->v_iocount > 1)) {
			FUNC7(vp);
			if ((*errorp = FUNC3(vp)) != 0)
				rc = 1;
		} else
			FUNC7(vp);
		FUNC6(vp);
		return(rc);
	}
	FUNC2();
	return (0);
}