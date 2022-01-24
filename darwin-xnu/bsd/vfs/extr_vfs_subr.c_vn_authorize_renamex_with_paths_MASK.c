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
typedef  int vfs_rename_flags_t ;
typedef  int /*<<< orphan*/  vfs_context_t ;
struct vnode {scalar_t__ v_type; struct vnode* v_parent; } ;
struct componentname {int cn_namelen; char* cn_nameptr; int cn_flags; int /*<<< orphan*/  cn_ndp; } ;
typedef  int kauth_action_t ;

/* Variables and functions */
 int EINVAL ; 
 int EISDIR ; 
 int ENOTDIR ; 
 int ISDOTDOT ; 
 int /*<<< orphan*/  KAUTH_FILEOP_WILL_RENAME ; 
 int KAUTH_VNODE_ADD_FILE ; 
 int KAUTH_VNODE_ADD_SUBDIRECTORY ; 
 int KAUTH_VNODE_DELETE ; 
 struct vnode* NULLVP ; 
 scalar_t__ VDIR ; 
 int VFS_RENAME_SWAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,uintptr_t,uintptr_t) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct vnode*,struct vnode*,struct componentname*,struct vnode*,struct vnode*,struct componentname*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct vnode*,struct vnode*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct vnode*) ; 
 scalar_t__ FUNC7 (struct vnode*) ; 

int
FUNC8(struct vnode *fdvp,  struct vnode *fvp,  struct componentname *fcnp, const char *from_path,
					 struct vnode *tdvp,  struct vnode *tvp,  struct componentname *tcnp, const char *to_path,
					 vfs_context_t ctx, vfs_rename_flags_t flags, void *reserved)
{
	int error = 0;
	int moving = 0;
	bool swap = flags & VFS_RENAME_SWAP;

	if (reserved != NULL) {
		FUNC3("Passed something other than NULL as reserved field!");
	}

	/*
	 * Avoid renaming "." and "..".
	 *
	 * XXX No need to check for this in the FS.  We should always have the leaves
	 * in VFS in this case.
	 */
	if (fvp->v_type == VDIR &&
	    ((fdvp == fvp) ||
	     (fcnp->cn_namelen == 1 && fcnp->cn_nameptr[0] == '.') ||
	     ((fcnp->cn_flags | tcnp->cn_flags) & ISDOTDOT)) ) {
		error = EINVAL;
		goto out;
	}

	if (tvp == NULLVP && FUNC6(tdvp)) {
		error = FUNC1(tcnp->cn_ndp);
		if (error) 
			goto out;
	}

	/***** <MACF> *****/
#if CONFIG_MACF
	error = mac_vnode_check_rename(ctx, fdvp, fvp, fcnp, tdvp, tvp, tcnp);
	if (error)
		goto out;
	if (swap) {
		error = mac_vnode_check_rename(ctx, tdvp, tvp, tcnp, fdvp, fvp, fcnp);
		if (error)
			goto out;
	}
#endif
	/***** </MACF> *****/

	/***** <MiscChecks> *****/
	if (tvp != NULL) {
		if (!swap) {
			if (fvp->v_type == VDIR && tvp->v_type != VDIR) {
				error = ENOTDIR;
				goto out;
			} else if (fvp->v_type != VDIR && tvp->v_type == VDIR) {
				error = EISDIR;
				goto out;
			}
		}
	} else if (swap) {
		/*
		 * Caller should have already checked this and returned
		 * ENOENT.  If we send back ENOENT here, caller will retry
		 * which isn't what we want so we send back EINVAL here
		 * instead.
		 */
		error = EINVAL;
		goto out;
	}

	if (fvp == tdvp) {
		error = EINVAL;
		goto out;
	}

	/*
	 * The following edge case is caught here:
	 * (to cannot be a descendent of from)
	 *
	 *       o fdvp
	 *      /
	 *     /
	 *    o fvp
	 *     \
	 *      \
	 *       o tdvp
	 *      /
	 *     /
	 *    o tvp
	 */
	if (tdvp->v_parent == fvp) {
		error = EINVAL;
		goto out;
	}

	if (swap && fdvp->v_parent == tvp) {
		error = EINVAL;
		goto out;
	}
	/***** </MiscChecks> *****/

	/***** <Kauth> *****/

	/*
	 * As part of the Kauth step, we call out to allow 3rd-party
	 * fileop notification of "about to rename".  This is needed
	 * in the event that 3rd-parties need to know that the DELETE
	 * authorization is actually part of a rename.  It's important
	 * that we guarantee that the DELETE call-out will always be
	 * made if the WILL_RENAME call-out is made.  Another fileop
	 * call-out will be performed once the operation is completed.
	 * We can ignore the result of kauth_authorize_fileop().
	 *
	 * N.B. We are passing the vnode and *both* paths to each
	 * call; kauth_authorize_fileop() extracts the "from" path
	 * when posting a KAUTH_FILEOP_WILL_RENAME notification.
	 * As such, we only post these notifications if all of the
	 * information we need is provided.
	 */

	if (swap) {
		kauth_action_t f = 0, t = 0;

		/*
		 * Directories changing parents need ...ADD_SUBDIR...  to
		 * permit changing ".."
		 */
		if (fdvp != tdvp) {
			if (FUNC7(fvp))
				f = KAUTH_VNODE_ADD_SUBDIRECTORY;
			if (FUNC7(tvp))
				t = KAUTH_VNODE_ADD_SUBDIRECTORY;
		}
		if (to_path != NULL)
			FUNC0(FUNC4(ctx),
					KAUTH_FILEOP_WILL_RENAME,
					(uintptr_t)fvp,
					(uintptr_t)to_path);
		error = FUNC5(fvp, fdvp, KAUTH_VNODE_DELETE | f, ctx);
		if (error)
			goto out;
		if (from_path != NULL)
			FUNC0(FUNC4(ctx),
					KAUTH_FILEOP_WILL_RENAME,
					(uintptr_t)tvp,
					(uintptr_t)from_path);
		error = FUNC5(tvp, tdvp, KAUTH_VNODE_DELETE | t, ctx);
		if (error)
			goto out;
		f = FUNC7(fvp) ? KAUTH_VNODE_ADD_SUBDIRECTORY : KAUTH_VNODE_ADD_FILE;
		t = FUNC7(tvp) ? KAUTH_VNODE_ADD_SUBDIRECTORY : KAUTH_VNODE_ADD_FILE;
		if (fdvp == tdvp)
			error = FUNC5(fdvp, NULL, f | t, ctx);
		else {
			error = FUNC5(fdvp, NULL, t, ctx);
			if (error)
				goto out;
			error = FUNC5(tdvp, NULL, f, ctx);
		}
		if (error)
			goto out;
	} else {
		error = 0;
		if ((tvp != NULL) && FUNC7(tvp)) {
			if (tvp != fdvp)
				moving = 1;
		} else if (tdvp != fdvp) {
			moving = 1;
		}

		/*
		 * must have delete rights to remove the old name even in
		 * the simple case of fdvp == tdvp.
		 *
		 * If fvp is a directory, and we are changing it's parent,
		 * then we also need rights to rewrite its ".." entry as well.
		 */
		if (to_path != NULL)
			FUNC0(FUNC4(ctx),
					KAUTH_FILEOP_WILL_RENAME,
					(uintptr_t)fvp,
					(uintptr_t)to_path);
		if (FUNC7(fvp)) {
			if ((error = FUNC5(fvp, fdvp, KAUTH_VNODE_DELETE | KAUTH_VNODE_ADD_SUBDIRECTORY, ctx)) != 0)
				goto out;
		} else {
			if ((error = FUNC5(fvp, fdvp, KAUTH_VNODE_DELETE, ctx)) != 0)
				goto out;
		}
		if (moving) {
			/* moving into tdvp or tvp, must have rights to add */
			if ((error = FUNC5(((tvp != NULL) && FUNC7(tvp)) ? tvp : tdvp,
							NULL, 
							FUNC7(fvp) ? KAUTH_VNODE_ADD_SUBDIRECTORY : KAUTH_VNODE_ADD_FILE,
							ctx)) != 0) {
				goto out;
			}
		} else {
			/* node staying in same directory, must be allowed to add new name */
			if ((error = FUNC5(fdvp, NULL,
							FUNC7(fvp) ? KAUTH_VNODE_ADD_SUBDIRECTORY : KAUTH_VNODE_ADD_FILE, ctx)) != 0)
				goto out;
		}
		/* overwriting tvp */
		if ((tvp != NULL) && !FUNC7(tvp) &&
				((error = FUNC5(tvp, tdvp, KAUTH_VNODE_DELETE, ctx)) != 0)) {
			goto out;
		}
	}

	/***** </Kauth> *****/

	/* XXX more checks? */
out:
	return error;
}