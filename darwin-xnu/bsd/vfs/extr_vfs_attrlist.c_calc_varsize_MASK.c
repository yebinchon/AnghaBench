#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_4__* vnode_t ;
struct vnode_attr {char* va_name; TYPE_3__* va_acl; } ;
struct attrlist {int commonattr; int forkattr; } ;
typedef  int ssize_t ;
typedef  int errno_t ;
struct TYPE_12__ {TYPE_2__* v_mount; } ;
struct TYPE_11__ {scalar_t__ acl_entrycount; } ;
struct TYPE_9__ {int* f_mntonname; } ;
struct TYPE_10__ {TYPE_1__ mnt_vfsstat; } ;

/* Variables and functions */
 int ATTR_CMNEXT_RELPATH ; 
 int ATTR_CMN_EXTENDED_SECURITY ; 
 int ATTR_CMN_FULLPATH ; 
 int ATTR_CMN_NAME ; 
 int /*<<< orphan*/  BUILDPATH_VOLUME_RELATIVE ; 
 scalar_t__ KAUTH_FILESEC_NOACL ; 
 int FUNC0 (scalar_t__) ; 
 int MAXPATHLEN ; 
 scalar_t__ FUNC1 (struct vnode_attr*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_4__*,char*,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const**,int*) ; 
 int FUNC4 (int,int) ; 
 int FUNC5 (char const*) ; 
 int /*<<< orphan*/  va_acl ; 
 int /*<<< orphan*/  va_name ; 
 int /*<<< orphan*/  FUNC6 () ; 
 char* FUNC7 (TYPE_4__*) ; 
 scalar_t__ FUNC8 (TYPE_4__*) ; 

__attribute__((used)) static errno_t
FUNC9(vnode_t vp, struct attrlist *alp, struct vnode_attr *vap,
   ssize_t *varsizep, char *fullpathptr, ssize_t *fullpathlenp,
   char *relpathptr, ssize_t *relpathlenp, const char **vnamep,
   const char **cnpp, ssize_t *cnlp)
{
	int error = 0;

	*varsizep = 0; /* length count */
	/* We may need to fix up the name attribute if requested */
	if (alp->commonattr & ATTR_CMN_NAME) {
		if (FUNC1(vap, va_name)) {
			vap->va_name[MAXPATHLEN-1] = '\0';	/* Ensure nul-termination */
			*cnpp = vap->va_name;
			*cnlp = FUNC5(*cnpp);
		} else if (vp) {
			/* Filesystem did not support getting the name */
			if (FUNC8(vp)) {
				if (vp->v_mount->mnt_vfsstat.f_mntonname[1] == 0x00 &&
						vp->v_mount->mnt_vfsstat.f_mntonname[0] == '/') {
					/* special case for boot volume.  Use root name when it's
					 * available (which is the volume name) or just the mount on
					 * name of "/".  we must do this for binary compatibility with
					 * pre Tiger code.  returning nothing for the boot volume name
					 * breaks installers - 3961058
					 */
					*cnpp = *vnamep = FUNC7(vp);
					if (*cnpp == NULL) {
						/* just use "/" as name */
						*cnpp = &vp->v_mount->mnt_vfsstat.f_mntonname[0];
					}
					*cnlp = FUNC5(*cnpp);
				}
				else {
					FUNC3(vp->v_mount->mnt_vfsstat.f_mntonname, cnpp, cnlp);
				}
			} 
			else {
				*cnpp = *vnamep = FUNC7(vp);
				*cnlp = 0;
				if (*cnpp != NULL) {
					*cnlp = FUNC5(*cnpp);
				}
			}
		} else {
			*cnlp = 0;
		}
		*varsizep += FUNC4(*cnlp + 1, 4);
	}

	/* 
	 * Compute the full path to this vnode, if necessary. This attribute is almost certainly
	 * not supported by any filesystem, so build the path to this vnode at this time.
	 */
	if (vp && (alp->commonattr & ATTR_CMN_FULLPATH)) {
		int len = MAXPATHLEN;
		int err;

		/* call build_path making sure NOT to use the cache-only behavior */
		err = FUNC2(vp, fullpathptr, len, &len, 0, FUNC6());
		if (err) {
			error = err;
			goto out;
		}
		*fullpathlenp = 0;
		if (fullpathptr){
			*fullpathlenp = FUNC5(fullpathptr);
		}
		*varsizep += FUNC4(((*fullpathlenp) + 1), 4);
	}

	/*
	 * Compute this vnode's volume relative path.
	 */
	if (vp && (alp->forkattr & ATTR_CMNEXT_RELPATH)) {
		int len;
		int err;

		/* call build_path making sure NOT to use the cache-only behavior */
		err = FUNC2(vp, relpathptr, MAXPATHLEN, &len, BUILDPATH_VOLUME_RELATIVE, FUNC6());
		if (err) {
			error = err;
			goto out;
		}

		//`len' includes trailing null
		*relpathlenp = len - 1;
		*varsizep += FUNC4(len, 4);
	}

	/*
	 * We have a kauth_acl_t but we will be returning a kauth_filesec_t.
	 *
	 * XXX This needs to change at some point; since the blob is opaque in
	 * user-space this is OK.
	 */
	if ((alp->commonattr & ATTR_CMN_EXTENDED_SECURITY) &&
			FUNC1(vap, va_acl) &&
			(vap->va_acl != NULL)) {

		/* 
		 * Since we have a kauth_acl_t (not a kauth_filesec_t), we have to check against
		 * KAUTH_FILESEC_NOACL ourselves
		 */ 
		if (vap->va_acl->acl_entrycount == KAUTH_FILESEC_NOACL) {
			*varsizep += FUNC4((FUNC0(0)), 4);
		}
		else {
			*varsizep += FUNC4 ((FUNC0(vap->va_acl->acl_entrycount)), 4);
		}
	}

out:
	return (error);
}