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
typedef  int /*<<< orphan*/  uint32_t ;
struct vnode_attr {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NFS_FATTR_ACL ; 
 int /*<<< orphan*/  NFS_FATTR_ARCHIVE ; 
 int /*<<< orphan*/  NFS_FATTR_FILEID ; 
 int /*<<< orphan*/  NFS_FATTR_FSID ; 
 int /*<<< orphan*/  NFS_FATTR_HIDDEN ; 
 int /*<<< orphan*/  NFS_FATTR_MODE ; 
 int /*<<< orphan*/  NFS_FATTR_NUMLINKS ; 
 int /*<<< orphan*/  NFS_FATTR_OWNER ; 
 int /*<<< orphan*/  NFS_FATTR_OWNER_GROUP ; 
 int /*<<< orphan*/  NFS_FATTR_RAWDEV ; 
 int /*<<< orphan*/  NFS_FATTR_SIZE ; 
 int /*<<< orphan*/  NFS_FATTR_SPACE_USED ; 
 int /*<<< orphan*/  NFS_FATTR_TIME_ACCESS ; 
 int /*<<< orphan*/  NFS_FATTR_TIME_BACKUP ; 
 int /*<<< orphan*/  NFS_FATTR_TIME_CREATE ; 
 int /*<<< orphan*/  NFS_FATTR_TIME_METADATA ; 
 int /*<<< orphan*/  NFS_FATTR_TIME_MODIFY ; 
 int /*<<< orphan*/  NFS_FATTR_TYPE ; 
 int /*<<< orphan*/  FUNC1 (struct vnode_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  va_access_time ; 
 int /*<<< orphan*/  va_acl ; 
 int /*<<< orphan*/  va_backup_time ; 
 int /*<<< orphan*/  va_change_time ; 
 int /*<<< orphan*/  va_create_time ; 
 int /*<<< orphan*/  va_data_size ; 
 int /*<<< orphan*/  va_fileid ; 
 int /*<<< orphan*/  va_flags ; 
 int /*<<< orphan*/  va_fsid ; 
 int /*<<< orphan*/  va_gid ; 
 int /*<<< orphan*/  va_guuid ; 
 int /*<<< orphan*/  va_mode ; 
 int /*<<< orphan*/  va_modify_time ; 
 int /*<<< orphan*/  va_nlink ; 
 int /*<<< orphan*/  va_rdev ; 
 int /*<<< orphan*/  va_total_alloc ; 
 int /*<<< orphan*/  va_type ; 
 int /*<<< orphan*/  va_uid ; 
 int /*<<< orphan*/  va_uuuid ; 

void
FUNC2(uint32_t *bitmap, struct vnode_attr *vap)
{
	if (FUNC0(bitmap, NFS_FATTR_TYPE))
		FUNC1(vap, va_type);
	// if (NFS_BITMAP_ISSET(bitmap, NFS_FATTR_CHANGE))
	if (FUNC0(bitmap, NFS_FATTR_SIZE))
		FUNC1(vap, va_data_size);
	if (FUNC0(bitmap, NFS_FATTR_FSID))
		FUNC1(vap, va_fsid);
	if (FUNC0(bitmap, NFS_FATTR_ACL))
		FUNC1(vap, va_acl);
	if (FUNC0(bitmap, NFS_FATTR_ARCHIVE))
		FUNC1(vap, va_flags);
	if (FUNC0(bitmap, NFS_FATTR_FILEID))
		FUNC1(vap, va_fileid);
	if (FUNC0(bitmap, NFS_FATTR_HIDDEN))
		FUNC1(vap, va_flags);
	// if (NFS_BITMAP_ISSET(bitmap, NFS_FATTR_MIMETYPE))
	if (FUNC0(bitmap, NFS_FATTR_MODE))
		FUNC1(vap, va_mode);
	if (FUNC0(bitmap, NFS_FATTR_NUMLINKS))
		FUNC1(vap, va_nlink);
	if (FUNC0(bitmap, NFS_FATTR_OWNER)) {
		FUNC1(vap, va_uid);
		FUNC1(vap, va_uuuid);
	}
	if (FUNC0(bitmap, NFS_FATTR_OWNER_GROUP)) {
		FUNC1(vap, va_gid);
		FUNC1(vap, va_guuid);
	}
	if (FUNC0(bitmap, NFS_FATTR_RAWDEV))
		FUNC1(vap, va_rdev);
	if (FUNC0(bitmap, NFS_FATTR_SPACE_USED))
		FUNC1(vap, va_total_alloc);
	// if (NFS_BITMAP_ISSET(bitmap, NFS_FATTR_SYSTEM))
	if (FUNC0(bitmap, NFS_FATTR_TIME_ACCESS))
		FUNC1(vap, va_access_time);
	if (FUNC0(bitmap, NFS_FATTR_TIME_BACKUP))
		FUNC1(vap, va_backup_time);
	if (FUNC0(bitmap, NFS_FATTR_TIME_CREATE))
		FUNC1(vap, va_create_time);
	if (FUNC0(bitmap, NFS_FATTR_TIME_METADATA))
		FUNC1(vap, va_change_time);
	if (FUNC0(bitmap, NFS_FATTR_TIME_MODIFY))
		FUNC1(vap, va_modify_time);
}