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
typedef  int /*<<< orphan*/  vnode_t ;
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  int uint32_t ;
struct vnode_attr {int dummy; } ;
struct nameidata {int /*<<< orphan*/  ni_cnd; } ;

/* Variables and functions */
 int /*<<< orphan*/  NULLVP ; 
 int /*<<< orphan*/  O_CREAT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct nameidata*,int /*<<< orphan*/ ,int,int*,struct vnode_attr*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct vnode_attr*,int /*<<< orphan*/ ) ; 
 int VN_CREATE_DOOPEN ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(vnode_t dvp, vnode_t *vpp, struct nameidata *ndp, struct vnode_attr *vap, uint32_t flags, int fmode, uint32_t *statusp, vfs_context_t ctx)
{
	/* Only use compound VNOP for compound operation */
	if (FUNC2(dvp) && ((flags & VN_CREATE_DOOPEN) != 0)) {
		*vpp = NULLVP;
		return FUNC0(dvp, vpp, ndp, O_CREAT, fmode, statusp, vap, ctx);
	} else {
		return FUNC1(dvp, vpp, &ndp->ni_cnd, vap, ctx);
	}
}