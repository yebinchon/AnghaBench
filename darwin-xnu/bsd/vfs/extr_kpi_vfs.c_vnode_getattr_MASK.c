#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_11__ ;

/* Type definitions */
typedef  TYPE_3__* vnode_t ;
typedef  int /*<<< orphan*/  vfs_context_t ;
typedef  int uid_t ;
struct vnode_attr {int va_active; int va_uid; int va_gid; int va_data_size; int va_total_size; int va_modify_time; int /*<<< orphan*/  va_guuid; int /*<<< orphan*/  va_uuuid; int /*<<< orphan*/ * va_acl; } ;
typedef  TYPE_4__* kauth_filesec_t ;
typedef  int /*<<< orphan*/ * kauth_acl_t ;
typedef  int gid_t ;
struct TYPE_16__ {int* val; } ;
struct TYPE_17__ {int f_iosize; scalar_t__ f_bsize; TYPE_1__ f_fsid; } ;
struct TYPE_20__ {int mnt_flag; int mnt_fsowner; int mnt_fsgroup; TYPE_2__ mnt_vfsstat; } ;
struct TYPE_15__ {scalar_t__ acl_entrycount; } ;
struct TYPE_19__ {int fsec_owner; int fsec_group; TYPE_11__ fsec_acl; } ;
struct TYPE_18__ {int v_type; TYPE_9__* v_mount; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 scalar_t__ KAUTH_FILESEC_NOACL ; 
 int KAUTH_GID_NONE ; 
 int KAUTH_UID_NONE ; 
 int MNT_IGNORE_OWNERSHIP ; 
 int /*<<< orphan*/  FUNC2 (struct vnode_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode_attr*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct vnode_attr*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct vnode_attr*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct vnode_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vnode_attr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct vnode_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VFS_KERNEL_EVENT ; 
 int VNODE_ATTR_ALL ; 
 int FUNC9 (TYPE_3__*,struct vnode_attr*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_11__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ *,int*) ; 
 int FUNC17 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int*) ; 
 int kauth_null_guid ; 
 int FUNC20 (int,scalar_t__) ; 
 int /*<<< orphan*/  va_acl ; 
 int /*<<< orphan*/  va_change_time ; 
 int /*<<< orphan*/  va_data_alloc ; 
 int /*<<< orphan*/  va_data_size ; 
 int /*<<< orphan*/  va_filerev ; 
 int /*<<< orphan*/  va_flags ; 
 int /*<<< orphan*/  va_fsid ; 
 int /*<<< orphan*/  va_gen ; 
 int /*<<< orphan*/  va_gid ; 
 int /*<<< orphan*/  va_guuid ; 
 int /*<<< orphan*/  va_iosize ; 
 int /*<<< orphan*/  va_modify_time ; 
 int /*<<< orphan*/  va_total_alloc ; 
 int /*<<< orphan*/  va_total_size ; 
 int /*<<< orphan*/  va_type ; 
 int /*<<< orphan*/  va_uid ; 
 int /*<<< orphan*/  va_uuuid ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int FUNC24 (TYPE_9__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC25 (TYPE_3__*,TYPE_4__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_3__*) ; 

int
FUNC27(vnode_t vp, struct vnode_attr *vap, vfs_context_t ctx)
{
	kauth_filesec_t fsec;
	kauth_acl_t facl;
	int	error;
	uid_t	nuid;
	gid_t	ngid;

	/*
	 * Reject attempts to fetch unknown attributes.
	 */
	if (vap->va_active & ~VNODE_ATTR_ALL)
		return (EINVAL);

	/* don't ask for extended security data if the filesystem doesn't support it */
	if (!FUNC23(FUNC26(vp))) {
		FUNC2(vap, va_acl);
		FUNC2(vap, va_uuuid);
		FUNC2(vap, va_guuid);
	}

	/*
	 * If the caller wants size values we might have to synthesise, give the
	 * filesystem the opportunity to supply better intermediate results.
	 */
	if (FUNC4(vap, va_data_alloc) ||
	    FUNC4(vap, va_total_size) ||
	    FUNC4(vap, va_total_alloc)) {
		FUNC8(vap, va_data_size);
		FUNC8(vap, va_data_alloc);
		FUNC8(vap, va_total_size);
		FUNC8(vap, va_total_alloc);
	}
	
	error = FUNC9(vp, vap, ctx);
	if (error) {
		FUNC1("ERROR - returning %d", error);
		goto out;
	}

	/*
	 * If extended security data was requested but not returned, try the fallback
	 * path.
	 */
	if (FUNC6(vap, va_acl) || FUNC6(vap, va_uuuid) || FUNC6(vap, va_guuid)) {
		fsec = NULL;

		if (FUNC10(vp)) {
			/* try to get the filesec */
			if ((error = FUNC25(vp, &fsec, ctx)) != 0)
				goto out;
		}
		/* if no filesec, no attributes */
		if (fsec == NULL) {
			FUNC7(vap, va_acl, NULL);
			FUNC7(vap, va_uuuid, kauth_null_guid);
			FUNC7(vap, va_guuid, kauth_null_guid);
		} else {

			/* looks good, try to return what we were asked for */
			FUNC7(vap, va_uuuid, fsec->fsec_owner);
			FUNC7(vap, va_guuid, fsec->fsec_group);

			/* only return the ACL if we were actually asked for it */
			if (FUNC4(vap, va_acl)) {
				if (fsec->fsec_acl.acl_entrycount == KAUTH_FILESEC_NOACL) {
					FUNC7(vap, va_acl, NULL);
				} else {
					facl = FUNC12(fsec->fsec_acl.acl_entrycount);
					if (facl == NULL) {
						FUNC18(fsec);
						error = ENOMEM;
						goto out;
					}
					FUNC11(&fsec->fsec_acl, facl, FUNC0(&fsec->fsec_acl));
					FUNC7(vap, va_acl, *facl);
				}
			}
			FUNC18(fsec);
		}
	}
	/*
	 * If someone gave us an unsolicited filesec, toss it.  We promise that
	 * we're OK with a filesystem giving us anything back, but our callers
	 * only expect what they asked for.
	 */
	if (FUNC5(vap, va_acl) && !FUNC4(vap, va_acl)) {
		if (vap->va_acl != NULL)
			FUNC13(vap->va_acl);
		FUNC3(vap, va_acl);
	}

#if 0	/* enable when we have a filesystem only supporting UUIDs */
	/*
	 * Handle the case where we need a UID/GID, but only have extended
	 * security information.
	 */
	if (VATTR_NOT_RETURNED(vap, va_uid) &&
	    VATTR_IS_SUPPORTED(vap, va_uuuid) &&
	    !kauth_guid_equal(&vap->va_uuuid, &kauth_null_guid)) {
		if ((error = kauth_cred_guid2uid(&vap->va_uuuid, &nuid)) == 0)
			VATTR_RETURN(vap, va_uid, nuid);
	}
	if (VATTR_NOT_RETURNED(vap, va_gid) &&
	    VATTR_IS_SUPPORTED(vap, va_guuid) &&
	    !kauth_guid_equal(&vap->va_guuid, &kauth_null_guid)) {
		if ((error = kauth_cred_guid2gid(&vap->va_guuid, &ngid)) == 0)
			VATTR_RETURN(vap, va_gid, ngid);
	}
#endif
	
	/*
	 * Handle uid/gid == 99 and MNT_IGNORE_OWNERSHIP here.
	 */
	if (FUNC4(vap, va_uid)) {
		if (FUNC21(ctx) && FUNC5(vap, va_uid)) {
			nuid = vap->va_uid;
		} else if (vp->v_mount->mnt_flag & MNT_IGNORE_OWNERSHIP) {
			nuid = vp->v_mount->mnt_fsowner;
			if (nuid == KAUTH_UID_NONE)
				nuid = 99;
		} else if (FUNC5(vap, va_uid)) {
			nuid = vap->va_uid;
		} else {
			/* this will always be something sensible */
			nuid = vp->v_mount->mnt_fsowner;
		}
		if ((nuid == 99) && !FUNC21(ctx))
			nuid = FUNC15(FUNC22(ctx));
		FUNC7(vap, va_uid, nuid);
	}
	if (FUNC4(vap, va_gid)) {
		if (FUNC21(ctx) && FUNC5(vap, va_gid)) {
			ngid = vap->va_gid;
		} else if (vp->v_mount->mnt_flag & MNT_IGNORE_OWNERSHIP) {
			ngid = vp->v_mount->mnt_fsgroup;
			if (ngid == KAUTH_GID_NONE)
				ngid = 99;
		} else if (FUNC5(vap, va_gid)) {
			ngid = vap->va_gid;
		} else {
			/* this will always be something sensible */
			ngid = vp->v_mount->mnt_fsgroup;
		}
		if ((ngid == 99) && !FUNC21(ctx))
			ngid = FUNC14(FUNC22(ctx));
		FUNC7(vap, va_gid, ngid);
	}

	/*
	 * Synthesise some values that can be reasonably guessed.
	 */
	if (!FUNC5(vap, va_iosize))
		FUNC7(vap, va_iosize, vp->v_mount->mnt_vfsstat.f_iosize);
	
	if (!FUNC5(vap, va_flags))
		FUNC7(vap, va_flags, 0);

	if (!FUNC5(vap, va_filerev))
		FUNC7(vap, va_filerev, 0);

	if (!FUNC5(vap, va_gen))
		FUNC7(vap, va_gen, 0);

	/*
	 * Default sizes.  Ordering here is important, as later defaults build on earlier ones.
	 */
	if (!FUNC5(vap, va_data_size))
		FUNC7(vap, va_data_size, 0);

	/* do we want any of the possibly-computed values? */
	if (FUNC4(vap, va_data_alloc) ||
	    FUNC4(vap, va_total_size) ||
	    FUNC4(vap, va_total_alloc)) {
                /* make sure f_bsize is valid */
                if (vp->v_mount->mnt_vfsstat.f_bsize == 0) {
                    if ((error = FUNC24(vp->v_mount, ctx, VFS_KERNEL_EVENT)) != 0)
                        goto out;
                }

		/* default va_data_alloc from va_data_size */
		if (!FUNC5(vap, va_data_alloc))
			FUNC7(vap, va_data_alloc, FUNC20(vap->va_data_size, vp->v_mount->mnt_vfsstat.f_bsize));

		/* default va_total_size from va_data_size */
		if (!FUNC5(vap, va_total_size))
			FUNC7(vap, va_total_size, vap->va_data_size);

		/* default va_total_alloc from va_total_size which is guaranteed at this point */
		if (!FUNC5(vap, va_total_alloc))
			FUNC7(vap, va_total_alloc, FUNC20(vap->va_total_size, vp->v_mount->mnt_vfsstat.f_bsize));
	}

	/*
	 * If we don't have a change time, pull it from the modtime.
	 */
	if (!FUNC5(vap, va_change_time) && FUNC5(vap, va_modify_time))
		FUNC7(vap, va_change_time, vap->va_modify_time);

	/*
	 * This is really only supported for the creation VNOPs, but since the field is there
	 * we should populate it correctly.
	 */
	FUNC7(vap, va_type, vp->v_type);

	/*
	 * The fsid can be obtained from the mountpoint directly.
	 */
	FUNC7(vap, va_fsid, vp->v_mount->mnt_vfsstat.f_fsid.val[0]);

out:

	return(error);
}