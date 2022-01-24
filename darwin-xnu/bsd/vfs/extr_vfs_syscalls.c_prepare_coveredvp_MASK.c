#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vnode_t ;
typedef  int /*<<< orphan*/  vfs_context_t ;
struct vnode_attr {scalar_t__ va_uid; } ;
struct componentname {int dummy; } ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_9__ {scalar_t__ v_type; int /*<<< orphan*/  v_flag; int /*<<< orphan*/ * v_mountedhere; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUF_WRITE_DATA ; 
 int EBUSY ; 
 int ENOTDIR ; 
 int EPERM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MNT_WAIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode_attr*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode_attr*,int /*<<< orphan*/ ) ; 
 scalar_t__ VDIR ; 
 int /*<<< orphan*/  VMOUNT ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,TYPE_1__*,struct componentname*,char const*) ; 
 int /*<<< orphan*/  va_uid ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_1__*,struct vnode_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 

int
FUNC13(vnode_t vp, vfs_context_t ctx, struct componentname *cnp, const char *fsname, boolean_t skip_auth)
{
#if !CONFIG_MACF
#pragma unused(cnp,fsname)
#endif
	struct vnode_attr va;
	int error;

	if (!skip_auth) {
		/*
		 * If the user is not root, ensure that they own the directory
		 * onto which we are attempting to mount.
		 */
		FUNC2(&va);
		FUNC3(&va, va_uid);
		if ((error = FUNC10(vp, &va, ctx)) ||
				(va.va_uid != FUNC6(FUNC9(ctx)) &&
				 (!FUNC8(ctx)))) {
			error = EPERM;
			goto out;
		}
	}

	if ( (error = FUNC4(vp, MNT_WAIT, ctx)) )
		goto out;

	if ( (error = FUNC5(vp, BUF_WRITE_DATA, 0, 0)) )
		goto out;

	if (vp->v_type != VDIR) {
		error = ENOTDIR;
		goto out;
	}

	if (FUNC0(vp->v_flag, VMOUNT) && (vp->v_mountedhere != NULL)) {
		error = EBUSY;
		goto out;
	}

#if CONFIG_MACF
	error = mac_mount_check_mount(ctx, vp,
	    cnp, fsname);
	if (error != 0)
		goto out;
#endif

	FUNC11(vp);
	FUNC1(vp->v_flag, VMOUNT);
	FUNC12(vp);

out:
	return error;
}