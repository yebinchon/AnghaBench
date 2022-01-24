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
struct vnode {int /*<<< orphan*/  v_label; } ;
struct uio {int dummy; } ;
typedef  int /*<<< orphan*/  kauth_cred_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vnode*,int /*<<< orphan*/ ,char const*,struct uio*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mac_vnode_enforce ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vnode_notify_setextattr ; 

void
FUNC3(vfs_context_t ctx, struct vnode *vp, const char *name, struct uio *uio)
{
	kauth_cred_t cred;

#if SECURITY_MAC_CHECK_ENFORCE
	/* 21167099 - only check if we allow write */
	if (!mac_vnode_enforce)
		return;
#endif
	cred = FUNC2(ctx);
	if (!FUNC1(cred))
		return;
	FUNC0(vnode_notify_setextattr, cred, vp, vp->v_label, name, uio);
}