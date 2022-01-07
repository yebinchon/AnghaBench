
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct vnode_attr {int va_vaflags; } ;
struct TYPE_2__ {int nfsa_flags; int * nfsa_supp_attr; } ;
struct nfsmount {TYPE_1__ nm_fsattr; } ;


 int ACLONLY ;
 int NFS_ATTR_BITMAP_LEN ;
 int NFS_BITMAP_SET (int *,int ) ;
 int NFS_CLEAR_ATTRIBUTES (int *) ;
 int NFS_FATTR_ACL ;
 int NFS_FATTR_ARCHIVE ;
 int NFS_FATTR_HIDDEN ;
 int NFS_FATTR_MODE ;
 int NFS_FATTR_OWNER ;
 int NFS_FATTR_OWNER_GROUP ;
 int NFS_FATTR_SIZE ;
 int NFS_FATTR_TIME_ACCESS_SET ;
 int NFS_FATTR_TIME_BACKUP ;
 int NFS_FATTR_TIME_CREATE ;
 int NFS_FATTR_TIME_MODIFY_SET ;
 int NFS_FSFLAG_ACL ;
 int NMFLAG (struct nfsmount*,int ) ;
 scalar_t__ VATTR_IS_ACTIVE (struct vnode_attr*,int ) ;
 int VA_UTIMES_NULL ;
 int va_access_time ;
 int va_acl ;
 int va_backup_time ;
 int va_create_time ;
 int va_data_size ;
 int va_flags ;
 int va_gid ;
 int va_guuid ;
 int va_mode ;
 int va_modify_time ;
 int va_uid ;
 int va_uuuid ;

void
nfs_vattr_set_bitmap(struct nfsmount *nmp, uint32_t *bitmap, struct vnode_attr *vap)
{
 int i;

 NFS_CLEAR_ATTRIBUTES(bitmap);
 if (VATTR_IS_ACTIVE(vap, va_data_size))
  NFS_BITMAP_SET(bitmap, NFS_FATTR_SIZE);
 if (VATTR_IS_ACTIVE(vap, va_acl) && (nmp->nm_fsattr.nfsa_flags & NFS_FSFLAG_ACL))
  NFS_BITMAP_SET(bitmap, NFS_FATTR_ACL);
 if (VATTR_IS_ACTIVE(vap, va_flags)) {
  NFS_BITMAP_SET(bitmap, NFS_FATTR_ARCHIVE);
  NFS_BITMAP_SET(bitmap, NFS_FATTR_HIDDEN);
 }

 if (VATTR_IS_ACTIVE(vap, va_mode) && !NMFLAG(nmp, ACLONLY))
  NFS_BITMAP_SET(bitmap, NFS_FATTR_MODE);
 if (VATTR_IS_ACTIVE(vap, va_uid) || VATTR_IS_ACTIVE(vap, va_uuuid))
  NFS_BITMAP_SET(bitmap, NFS_FATTR_OWNER);
 if (VATTR_IS_ACTIVE(vap, va_gid) || VATTR_IS_ACTIVE(vap, va_guuid))
  NFS_BITMAP_SET(bitmap, NFS_FATTR_OWNER_GROUP);

 if (vap->va_vaflags & VA_UTIMES_NULL) {
  NFS_BITMAP_SET(bitmap, NFS_FATTR_TIME_ACCESS_SET);
  NFS_BITMAP_SET(bitmap, NFS_FATTR_TIME_MODIFY_SET);
 } else {
  if (VATTR_IS_ACTIVE(vap, va_access_time))
   NFS_BITMAP_SET(bitmap, NFS_FATTR_TIME_ACCESS_SET);
  if (VATTR_IS_ACTIVE(vap, va_modify_time))
   NFS_BITMAP_SET(bitmap, NFS_FATTR_TIME_MODIFY_SET);
 }
 if (VATTR_IS_ACTIVE(vap, va_backup_time))
  NFS_BITMAP_SET(bitmap, NFS_FATTR_TIME_BACKUP);
 if (VATTR_IS_ACTIVE(vap, va_create_time))
  NFS_BITMAP_SET(bitmap, NFS_FATTR_TIME_CREATE);

 for (i=0; i < NFS_ATTR_BITMAP_LEN; i++)
  bitmap[i] &= nmp->nm_fsattr.nfsa_supp_attr[i];
}
