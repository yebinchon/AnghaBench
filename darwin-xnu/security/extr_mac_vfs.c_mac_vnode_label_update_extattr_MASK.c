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
struct vnode {int /*<<< orphan*/  v_label; } ;
struct mount {int /*<<< orphan*/  mnt_mntlabel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mount*,int /*<<< orphan*/ ,struct vnode*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  mac_label_vnodes ; 
 int /*<<< orphan*/  mac_vnode_enforce ; 
 int /*<<< orphan*/  vnode_label_update_extattr ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*) ; 

void
FUNC4(struct mount *mp, struct vnode *vp,
    const char *name)
{
	int error = 0;

#if SECURITY_MAC_CHECK_ENFORCE
	/* 21167099 - only check if we allow write */
	if (!mac_vnode_enforce)
		return;
#endif
	if (!mac_label_vnodes)
		return;

	FUNC0(vnode_label_update_extattr, mp, mp->mnt_mntlabel, vp,
		    vp->v_label, name);
	if (error == 0)
		return;

	FUNC1(vp);
	FUNC2(vp);
	FUNC3(vp);
	return;
}