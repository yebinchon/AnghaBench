
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vnode_attr {int dummy; } ;


 scalar_t__ NFS_BITMAP_ISSET (int *,int ) ;
 int NFS_FATTR_ACL ;
 int NFS_FATTR_ARCHIVE ;
 int NFS_FATTR_FILEID ;
 int NFS_FATTR_FSID ;
 int NFS_FATTR_HIDDEN ;
 int NFS_FATTR_MODE ;
 int NFS_FATTR_NUMLINKS ;
 int NFS_FATTR_OWNER ;
 int NFS_FATTR_OWNER_GROUP ;
 int NFS_FATTR_RAWDEV ;
 int NFS_FATTR_SIZE ;
 int NFS_FATTR_SPACE_USED ;
 int NFS_FATTR_TIME_ACCESS ;
 int NFS_FATTR_TIME_BACKUP ;
 int NFS_FATTR_TIME_CREATE ;
 int NFS_FATTR_TIME_METADATA ;
 int NFS_FATTR_TIME_MODIFY ;
 int NFS_FATTR_TYPE ;
 int VATTR_SET_SUPPORTED (struct vnode_attr*,int ) ;
 int va_access_time ;
 int va_acl ;
 int va_backup_time ;
 int va_change_time ;
 int va_create_time ;
 int va_data_size ;
 int va_fileid ;
 int va_flags ;
 int va_fsid ;
 int va_gid ;
 int va_guuid ;
 int va_mode ;
 int va_modify_time ;
 int va_nlink ;
 int va_rdev ;
 int va_total_alloc ;
 int va_type ;
 int va_uid ;
 int va_uuuid ;

void
nfs_vattr_set_supported(uint32_t *bitmap, struct vnode_attr *vap)
{
 if (NFS_BITMAP_ISSET(bitmap, NFS_FATTR_TYPE))
  VATTR_SET_SUPPORTED(vap, va_type);

 if (NFS_BITMAP_ISSET(bitmap, NFS_FATTR_SIZE))
  VATTR_SET_SUPPORTED(vap, va_data_size);
 if (NFS_BITMAP_ISSET(bitmap, NFS_FATTR_FSID))
  VATTR_SET_SUPPORTED(vap, va_fsid);
 if (NFS_BITMAP_ISSET(bitmap, NFS_FATTR_ACL))
  VATTR_SET_SUPPORTED(vap, va_acl);
 if (NFS_BITMAP_ISSET(bitmap, NFS_FATTR_ARCHIVE))
  VATTR_SET_SUPPORTED(vap, va_flags);
 if (NFS_BITMAP_ISSET(bitmap, NFS_FATTR_FILEID))
  VATTR_SET_SUPPORTED(vap, va_fileid);
 if (NFS_BITMAP_ISSET(bitmap, NFS_FATTR_HIDDEN))
  VATTR_SET_SUPPORTED(vap, va_flags);

 if (NFS_BITMAP_ISSET(bitmap, NFS_FATTR_MODE))
  VATTR_SET_SUPPORTED(vap, va_mode);
 if (NFS_BITMAP_ISSET(bitmap, NFS_FATTR_NUMLINKS))
  VATTR_SET_SUPPORTED(vap, va_nlink);
 if (NFS_BITMAP_ISSET(bitmap, NFS_FATTR_OWNER)) {
  VATTR_SET_SUPPORTED(vap, va_uid);
  VATTR_SET_SUPPORTED(vap, va_uuuid);
 }
 if (NFS_BITMAP_ISSET(bitmap, NFS_FATTR_OWNER_GROUP)) {
  VATTR_SET_SUPPORTED(vap, va_gid);
  VATTR_SET_SUPPORTED(vap, va_guuid);
 }
 if (NFS_BITMAP_ISSET(bitmap, NFS_FATTR_RAWDEV))
  VATTR_SET_SUPPORTED(vap, va_rdev);
 if (NFS_BITMAP_ISSET(bitmap, NFS_FATTR_SPACE_USED))
  VATTR_SET_SUPPORTED(vap, va_total_alloc);

 if (NFS_BITMAP_ISSET(bitmap, NFS_FATTR_TIME_ACCESS))
  VATTR_SET_SUPPORTED(vap, va_access_time);
 if (NFS_BITMAP_ISSET(bitmap, NFS_FATTR_TIME_BACKUP))
  VATTR_SET_SUPPORTED(vap, va_backup_time);
 if (NFS_BITMAP_ISSET(bitmap, NFS_FATTR_TIME_CREATE))
  VATTR_SET_SUPPORTED(vap, va_create_time);
 if (NFS_BITMAP_ISSET(bitmap, NFS_FATTR_TIME_METADATA))
  VATTR_SET_SUPPORTED(vap, va_change_time);
 if (NFS_BITMAP_ISSET(bitmap, NFS_FATTR_TIME_MODIFY))
  VATTR_SET_SUPPORTED(vap, va_modify_time);
}
