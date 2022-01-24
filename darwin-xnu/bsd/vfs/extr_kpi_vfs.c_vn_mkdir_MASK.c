#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vfs_context_t ;
struct vnode_attr {int dummy; } ;
struct vnode {int dummy; } ;
struct TYPE_2__ {scalar_t__ cn_nameiop; } ;
struct nameidata {TYPE_1__ ni_cnd; } ;

/* Variables and functions */
 scalar_t__ CREATE ; 
 int FUNC0 (struct vnode*,struct vnode**,struct nameidata*,struct vnode_attr*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct vnode*,struct vnode**,TYPE_1__*,struct vnode_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (struct vnode*) ; 

int
FUNC4(struct vnode *dvp, struct vnode **vpp, struct nameidata *ndp,
           struct vnode_attr *vap, vfs_context_t ctx)
{
	if (ndp->ni_cnd.cn_nameiop != CREATE) {
		FUNC2("Non-CREATE nameiop in vn_mkdir()?");
	}

	if (FUNC3(dvp)) {
		return FUNC0(dvp, vpp, ndp, vap, ctx);
	} else {
		return FUNC1(dvp, vpp, &ndp->ni_cnd, vap, ctx);
	}
}