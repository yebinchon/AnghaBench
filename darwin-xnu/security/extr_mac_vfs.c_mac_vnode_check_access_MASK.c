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
typedef  int /*<<< orphan*/  kauth_cred_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vnode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mac_vnode_enforce ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vnode_check_access ; 

int
FUNC4(vfs_context_t ctx, struct vnode *vp,
    int acc_mode)
{
	kauth_cred_t cred;
	int error;
	int mask;

#if SECURITY_MAC_CHECK_ENFORCE
	/* 21167099 - only check if we allow write */
	if (!mac_vnode_enforce)
		return 0;
#endif
	cred = FUNC3(ctx);
	if (!FUNC2(cred))
		return (0);
	/* Convert {R,W,X}_OK values to V{READ,WRITE,EXEC} for entry points */
	mask = FUNC0(acc_mode);
	FUNC1(vnode_check_access, cred, vp, vp->v_label, mask);
	return (error);
 }