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
typedef  scalar_t__ vnode_t ;
typedef  int /*<<< orphan*/  vfs_context_t ;
struct vnode_attr {int dummy; } ;
struct nameidata {int /*<<< orphan*/  ni_cnd; } ;

/* Variables and functions */
 scalar_t__ NULLVP ; 
 int FUNC0 (scalar_t__,scalar_t__*,struct nameidata*,struct vnode_attr*,int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

int
FUNC4(vnode_t dvp, vnode_t *vpp, struct nameidata *ndp, struct vnode_attr *vap, vfs_context_t ctx)
{
	if (FUNC3(dvp)) {
		return FUNC0(dvp, vpp, ndp, vap, ctx);
	} else {
		if (*vpp == NULLVP) {
			FUNC2("NULL vp, but not a compound VNOP?");
		}
		if (vap != NULL) {
			FUNC2("Non-NULL vap, but not a compound VNOP?");
		}
		return FUNC1(dvp, *vpp, &ndp->ni_cnd, ctx);
	}
}