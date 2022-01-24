#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vnode_t ;
typedef  int /*<<< orphan*/  vfs_context_t ;
struct vnode_attr {TYPE_1__* va_acl; void* va_guuid; void* va_uuuid; } ;
struct TYPE_3__ {scalar_t__ acl_entrycount; scalar_t__ acl_flags; } ;
struct kauth_filesec {void* fsec_group; void* fsec_owner; int /*<<< orphan*/  fsec_magic; TYPE_1__ fsec_acl; } ;
typedef  struct kauth_filesec* kauth_filesec_t ;
typedef  TYPE_1__* kauth_acl_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOATTR ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  KAUTH_FILESEC_MAGIC ; 
 scalar_t__ KAUTH_FILESEC_NOACL ; 
 int /*<<< orphan*/  KAUTH_FILESEC_XATTR ; 
 scalar_t__ FUNC1 (struct vnode_attr*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct vnode_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  XATTR_NOSECURITY ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct kauth_filesec*) ; 
 scalar_t__ FUNC7 (void**,void**) ; 
 void* kauth_null_guid ; 
 int /*<<< orphan*/  va_acl ; 
 int /*<<< orphan*/  va_guuid ; 
 int /*<<< orphan*/  va_uuuid ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct kauth_filesec**,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct kauth_filesec*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 

int
FUNC12(vnode_t vp, struct vnode_attr *vap, vfs_context_t ctx)
{
	kauth_filesec_t fsec;
	kauth_acl_t facl;
	struct kauth_filesec lfsec;
	int	error;

	error = 0;

	/*
	 * Extended security fallback via extended attributes.
	 *
	 * Note that we do not free the filesec; the caller is expected to
	 * do this.
	 */
	if (FUNC2(vap, va_acl) ||
	    FUNC2(vap, va_uuuid) ||
	    FUNC2(vap, va_guuid)) {
		FUNC4(ctx, vp, "SETATTR - doing filesec fallback");

		/*
		 * Fail for file types that we don't permit extended security
		 * to be set on.
		 */
		if (!FUNC5(vp)) {
			FUNC4(ctx, vp, "SETATTR - Can't write ACL to file type %d", FUNC11(vp));
			error = EINVAL;
			goto out;
		}

		/*
		 * If we don't have all the extended security items, we need
		 * to fetch the existing data to perform a read-modify-write
		 * operation.
		 */
		fsec = NULL;
		if (!FUNC1(vap, va_acl) ||
		    !FUNC1(vap, va_uuuid) ||
		    !FUNC1(vap, va_guuid)) {
			if ((error = FUNC9(vp, &fsec, ctx)) != 0) {
				FUNC0("SETATTR - ERROR %d fetching filesec for update", error);
				goto out;
			}
		}
		/* if we didn't get a filesec, use our local one */
		if (fsec == NULL) {
			FUNC0("SETATTR - using local filesec for new/full update");
			fsec = &lfsec;
		} else {
			FUNC0("SETATTR - updating existing filesec");
		}
		/* find the ACL */
		facl = &fsec->fsec_acl;
		
		/* if we're using the local filesec, we need to initialise it */
		if (fsec == &lfsec) {
			fsec->fsec_magic = KAUTH_FILESEC_MAGIC;
			fsec->fsec_owner = kauth_null_guid;
			fsec->fsec_group = kauth_null_guid;
			facl->acl_entrycount = KAUTH_FILESEC_NOACL;
			facl->acl_flags = 0;
		}

		/*
		 * Update with the supplied attributes.
		 */
		if (FUNC1(vap, va_uuuid)) {
			FUNC0("SETATTR - updating owner UUID");
			fsec->fsec_owner = vap->va_uuuid;
			FUNC3(vap, va_uuuid);
		}
		if (FUNC1(vap, va_guuid)) {
			FUNC0("SETATTR - updating group UUID");
			fsec->fsec_group = vap->va_guuid;
			FUNC3(vap, va_guuid);
		}
		if (FUNC1(vap, va_acl)) {
			if (vap->va_acl == NULL) {
				FUNC0("SETATTR - removing ACL");
				facl->acl_entrycount = KAUTH_FILESEC_NOACL;
			} else {
				FUNC0("SETATTR - setting ACL with %d entries", vap->va_acl->acl_entrycount);
				facl = vap->va_acl;
			}
			FUNC3(vap, va_acl);
		}
		
		/*
		 * If the filesec data is all invalid, we can just remove
		 * the EA completely.
		 */
		if ((facl->acl_entrycount == KAUTH_FILESEC_NOACL) &&
		    FUNC7(&fsec->fsec_owner, &kauth_null_guid) &&
		    FUNC7(&fsec->fsec_group, &kauth_null_guid)) {
			error = FUNC8(vp, KAUTH_FILESEC_XATTR, XATTR_NOSECURITY, ctx);
			/* no attribute is ok, nothing to delete */
			if (error == ENOATTR)
				error = 0;
			FUNC4(ctx, vp, "SETATTR - remove filesec returning %d", error);
		} else {
			/* write the EA */
			error = FUNC10(vp, fsec, facl, ctx);
			FUNC4(ctx, vp, "SETATTR - update filesec returning %d", error);
		}

		/* if we fetched a filesec, dispose of the buffer */
		if (fsec != &lfsec)
			FUNC6(fsec);
	}
out:

	return(error);
}