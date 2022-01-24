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
struct vnode {int /*<<< orphan*/ * v_label; } ;
struct componentname {int dummy; } ;
typedef  int /*<<< orphan*/  kauth_cred_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vnode*,int /*<<< orphan*/ *,struct vnode*,int /*<<< orphan*/ *,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mac_vnode_enforce ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vnode_check_rename ; 
 int /*<<< orphan*/  vnode_check_rename_from ; 
 int /*<<< orphan*/  vnode_check_rename_to ; 

int
FUNC3(vfs_context_t ctx, struct vnode *dvp,
    struct vnode *vp, struct componentname *cnp, struct vnode *tdvp,
    struct vnode *tvp, struct componentname *tcnp)
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

	FUNC0(vnode_check_rename_from, cred, dvp, dvp->v_label, vp,
	    vp->v_label, cnp);
	if (error)
		return (error);

	FUNC0(vnode_check_rename_to, cred, tdvp, tdvp->v_label, tvp,
	    tvp != NULL ? tvp->v_label : NULL, dvp == tdvp, tcnp);
	if (error)
		return (error);

	FUNC0(vnode_check_rename, cred, dvp, dvp->v_label, vp,
	    vp->v_label, cnp, tdvp, tdvp->v_label, tvp,
	    tvp != NULL ? tvp->v_label : NULL, tcnp);
	return (error);
}