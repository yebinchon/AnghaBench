#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  struct _vnode_authorize_context* vauth_ctx ;
struct vnode_attr {scalar_t__ va_type; } ;
struct _vnode_authorize_context {scalar_t__ flags_valid; scalar_t__ flags; struct vnode_attr* dvap; void* dvp; struct vnode_attr* vap; void* vp; int /*<<< orphan*/  ctx; } ;
typedef  TYPE_1__* mount_t ;
typedef  int kauth_action_t ;
typedef  int kauth_ace_rights_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_5__ {int mnt_flag; } ;

/* Variables and functions */
 int EACCES ; 
 int EPERM ; 
 int EROFS ; 
 int /*<<< orphan*/  FALSE ; 
 int KAUTH_VNODE_ACCESS ; 
 int KAUTH_VNODE_DELETE ; 
 int KAUTH_VNODE_DELETE_CHILD ; 
 int KAUTH_VNODE_EXECUTE ; 
 int KAUTH_VNODE_NOIMMUTABLE ; 
 int KAUTH_VNODE_WRITE_RIGHTS ; 
 int MNT_NOEXEC ; 
 int MNT_RDONLY ; 
 void* NULLVP ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct vnode_attr*,int /*<<< orphan*/ ) ; 
 scalar_t__ VDIR ; 
 scalar_t__ VLNK ; 
 scalar_t__ VREG ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  va_acl ; 
 int /*<<< orphan*/  va_gid ; 
 int /*<<< orphan*/  va_uid ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int FUNC4 (struct _vnode_authorize_context*,TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

int
FUNC5(struct vnode_attr *vap, struct vnode_attr *dvap, mount_t mp,
    kauth_action_t action, vfs_context_t ctx)
{
	struct _vnode_authorize_context auth_context;
	vauth_ctx vcp;
	kauth_ace_rights_t rights;
	int noimmutable;
	boolean_t found_deny;
	boolean_t is_suser = FALSE;
	int result = 0;

	vcp = &auth_context;
	vcp->ctx = ctx;
	vcp->vp = NULLVP;
	vcp->vap = vap;
	vcp->dvp = NULLVP;
	vcp->dvap = dvap;
	vcp->flags = vcp->flags_valid = 0;

	noimmutable = (action & KAUTH_VNODE_NOIMMUTABLE) ? 1 : 0;
	rights = action & ~(KAUTH_VNODE_ACCESS | KAUTH_VNODE_NOIMMUTABLE);

	/*
	 * Check for read-only filesystems.
	 */
	if ((rights & KAUTH_VNODE_WRITE_RIGHTS) &&
	    mp && (mp->mnt_flag & MNT_RDONLY) &&
	    ((vap->va_type == VREG) || (vap->va_type == VDIR) ||
	    (vap->va_type == VLNK) || (rights & KAUTH_VNODE_DELETE) ||
	    (rights & KAUTH_VNODE_DELETE_CHILD))) {
		result = EROFS;
		goto out;
	}

	/*
	 * Check for noexec filesystems.
	 */
	if ((rights & KAUTH_VNODE_EXECUTE) &&
	    (vap->va_type == VREG) && mp && (mp->mnt_flag & MNT_NOEXEC)) {
		result = EACCES;
		goto out;
	}

	if (FUNC2(ctx)) {
		/*
		 * if we're not asking for execute permissions or modifications,
		 * then we're done, this action is authorized.
		 */
		if (!(rights & (KAUTH_VNODE_EXECUTE | KAUTH_VNODE_WRITE_RIGHTS)))
			goto out;
		is_suser = TRUE;
	} else {
		if (!FUNC0(vap, va_uid) ||
		    !FUNC0(vap, va_gid) ||
		    (mp && FUNC3(mp) && !FUNC0(vap, va_acl))) {
			FUNC1("vnode attrs not complete for vnode_attr_authorize\n");
		}
	}

	result = FUNC4(vcp, mp, rights, is_suser,
	    &found_deny, noimmutable, FALSE);

	if (result == EPERM)
		result = EACCES;
out:
	return (result);
}