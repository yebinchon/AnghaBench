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
typedef  int /*<<< orphan*/  vfs_context_t ;
struct vfs_attr {int dummy; } ;
struct mount {int /*<<< orphan*/  mnt_mntlabel; } ;
typedef  int /*<<< orphan*/  kauth_cred_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mount*,int /*<<< orphan*/ ,struct vfs_attr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mac_vnode_enforce ; 
 int /*<<< orphan*/  mount_check_setattr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3(vfs_context_t ctx, struct mount *mp, 
    struct vfs_attr *vfa)
{
	kauth_cred_t cred;
	int error;

#if SECURITY_MAC_CHECK_ENFORCE
	/* 21167099 - only check if we allow write */
	if (!mac_vnode_enforce)
		return 0;
#endif
	cred = FUNC2(ctx);
	if (!FUNC1(cred))
		return (0);
	FUNC0(mount_check_setattr, cred, mp, mp->mnt_mntlabel, vfa);
	return (error);
}