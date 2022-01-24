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
typedef  int /*<<< orphan*/  user_addr_t ;
typedef  int /*<<< orphan*/  uid_t ;
struct vnode_attr {int dummy; } ;
struct nameidata {int /*<<< orphan*/  ni_vp; } ;
typedef  scalar_t__ kauth_action_t ;
typedef  int /*<<< orphan*/  gid_t ;
typedef  enum uio_seg { ____Placeholder_uio_seg } uio_seg ;

/* Variables and functions */
 int AT_SYMLINK_NOFOLLOW ; 
 int AUDITVNPATH1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EACCES ; 
 int EPERM ; 
 int FOLLOW ; 
 int /*<<< orphan*/  LOOKUP ; 
 int /*<<< orphan*/  FUNC1 (struct nameidata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int NOFOLLOW ; 
 int /*<<< orphan*/  OP_SETATTR ; 
 int /*<<< orphan*/  FUNC2 (struct vnode_attr*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode_attr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ VNOVAL ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct nameidata*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nameidata*) ; 
 int /*<<< orphan*/  owner ; 
 int /*<<< orphan*/  va_gid ; 
 int /*<<< orphan*/  va_uid ; 
 int FUNC8 (int /*<<< orphan*/ ,struct vnode_attr*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,struct vnode_attr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(vfs_context_t ctx, int fd, user_addr_t path, uid_t uid,
   gid_t gid, int flag, enum uio_seg segflg)
{
	vnode_t vp;
	struct vnode_attr va;
	int error;
	struct nameidata nd;
	int follow;
	kauth_action_t action;

	FUNC0(owner, uid, gid);

	follow = (flag & AT_SYMLINK_NOFOLLOW) ? NOFOLLOW : FOLLOW;
	FUNC1(&nd, LOOKUP, OP_SETATTR, follow | AUDITVNPATH1, segflg,
	    path, ctx);
	error = FUNC6(&nd, fd);
	if (error)
		return (error);
	vp = nd.ni_vp;

	FUNC7(&nd);

	FUNC2(&va);
	if (uid != (uid_t)VNOVAL)
		FUNC3(&va, va_uid, uid);
	if (gid != (gid_t)VNOVAL)
		FUNC3(&va, va_gid, gid);

#if CONFIG_MACF
	error = mac_vnode_check_setowner(ctx, vp, uid, gid);
	if (error)
		goto out;
#endif

	/* preflight and authorize attribute changes */
	if ((error = FUNC8(vp, &va, &action, ctx)) != 0)
		goto out;
	if (action && ((error = FUNC9(vp, NULL, action, ctx)) != 0))
		goto out;
	error = FUNC11(vp, &va, ctx);

#if CONFIG_MACF
	if (error == 0)
		mac_vnode_notify_setowner(ctx, vp, uid, gid);
#endif

out:
	/*
	 * EACCES is only allowed from namei(); permissions failure should
	 * return EPERM, so we need to translate the error code.
	 */
	if (error == EACCES)
		error = EPERM;

	FUNC10(vp);
	return (error);
}