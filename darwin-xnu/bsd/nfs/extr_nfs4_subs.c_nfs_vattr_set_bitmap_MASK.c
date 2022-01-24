#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct vnode_attr {int va_vaflags; } ;
struct TYPE_2__ {int nfsa_flags; int /*<<< orphan*/ * nfsa_supp_attr; } ;
struct nfsmount {TYPE_1__ nm_fsattr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACLONLY ; 
 int NFS_ATTR_BITMAP_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NFS_FATTR_ACL ; 
 int /*<<< orphan*/  NFS_FATTR_ARCHIVE ; 
 int /*<<< orphan*/  NFS_FATTR_HIDDEN ; 
 int /*<<< orphan*/  NFS_FATTR_MODE ; 
 int /*<<< orphan*/  NFS_FATTR_OWNER ; 
 int /*<<< orphan*/  NFS_FATTR_OWNER_GROUP ; 
 int /*<<< orphan*/  NFS_FATTR_SIZE ; 
 int /*<<< orphan*/  NFS_FATTR_TIME_ACCESS_SET ; 
 int /*<<< orphan*/  NFS_FATTR_TIME_BACKUP ; 
 int /*<<< orphan*/  NFS_FATTR_TIME_CREATE ; 
 int /*<<< orphan*/  NFS_FATTR_TIME_MODIFY_SET ; 
 int NFS_FSFLAG_ACL ; 
 int /*<<< orphan*/  FUNC2 (struct nfsmount*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct vnode_attr*,int /*<<< orphan*/ ) ; 
 int VA_UTIMES_NULL ; 
 int /*<<< orphan*/  va_access_time ; 
 int /*<<< orphan*/  va_acl ; 
 int /*<<< orphan*/  va_backup_time ; 
 int /*<<< orphan*/  va_create_time ; 
 int /*<<< orphan*/  va_data_size ; 
 int /*<<< orphan*/  va_flags ; 
 int /*<<< orphan*/  va_gid ; 
 int /*<<< orphan*/  va_guuid ; 
 int /*<<< orphan*/  va_mode ; 
 int /*<<< orphan*/  va_modify_time ; 
 int /*<<< orphan*/  va_uid ; 
 int /*<<< orphan*/  va_uuuid ; 

void
FUNC4(struct nfsmount *nmp, uint32_t *bitmap, struct vnode_attr *vap)
{
	int i;

	FUNC1(bitmap);
	if (FUNC3(vap, va_data_size))
		FUNC0(bitmap, NFS_FATTR_SIZE);
	if (FUNC3(vap, va_acl) && (nmp->nm_fsattr.nfsa_flags & NFS_FSFLAG_ACL))
		FUNC0(bitmap, NFS_FATTR_ACL);
	if (FUNC3(vap, va_flags)) {
		FUNC0(bitmap, NFS_FATTR_ARCHIVE);
		FUNC0(bitmap, NFS_FATTR_HIDDEN);
	}
	// NFS_BITMAP_SET(bitmap, NFS_FATTR_MIMETYPE)
	if (FUNC3(vap, va_mode) && !FUNC2(nmp, ACLONLY))
		FUNC0(bitmap, NFS_FATTR_MODE);
	if (FUNC3(vap, va_uid) || FUNC3(vap, va_uuuid))
		FUNC0(bitmap, NFS_FATTR_OWNER);
	if (FUNC3(vap, va_gid) || FUNC3(vap, va_guuid))
		FUNC0(bitmap, NFS_FATTR_OWNER_GROUP);
	// NFS_BITMAP_SET(bitmap, NFS_FATTR_SYSTEM)
	if (vap->va_vaflags & VA_UTIMES_NULL) {
		FUNC0(bitmap, NFS_FATTR_TIME_ACCESS_SET);
		FUNC0(bitmap, NFS_FATTR_TIME_MODIFY_SET);
	} else {
		if (FUNC3(vap, va_access_time))
			FUNC0(bitmap, NFS_FATTR_TIME_ACCESS_SET);
		if (FUNC3(vap, va_modify_time))
			FUNC0(bitmap, NFS_FATTR_TIME_MODIFY_SET);
	}
	if (FUNC3(vap, va_backup_time))
		FUNC0(bitmap, NFS_FATTR_TIME_BACKUP);
	if (FUNC3(vap, va_create_time))
		FUNC0(bitmap, NFS_FATTR_TIME_CREATE);
	/* and limit to what is supported by server */
	for (i=0; i < NFS_ATTR_BITMAP_LEN; i++)
		bitmap[i] &= nmp->nm_fsattr.nfsa_supp_attr[i];
}