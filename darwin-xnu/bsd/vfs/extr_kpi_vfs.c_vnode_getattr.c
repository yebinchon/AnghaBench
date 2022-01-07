
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_11__ ;


typedef TYPE_3__* vnode_t ;
typedef int vfs_context_t ;
typedef int uid_t ;
struct vnode_attr {int va_active; int va_uid; int va_gid; int va_data_size; int va_total_size; int va_modify_time; int va_guuid; int va_uuuid; int * va_acl; } ;
typedef TYPE_4__* kauth_filesec_t ;
typedef int * kauth_acl_t ;
typedef int gid_t ;
struct TYPE_16__ {int* val; } ;
struct TYPE_17__ {int f_iosize; scalar_t__ f_bsize; TYPE_1__ f_fsid; } ;
struct TYPE_20__ {int mnt_flag; int mnt_fsowner; int mnt_fsgroup; TYPE_2__ mnt_vfsstat; } ;
struct TYPE_15__ {scalar_t__ acl_entrycount; } ;
struct TYPE_19__ {int fsec_owner; int fsec_group; TYPE_11__ fsec_acl; } ;
struct TYPE_18__ {int v_type; TYPE_9__* v_mount; } ;


 int EINVAL ;
 int ENOMEM ;
 int KAUTH_ACL_COPYSIZE (TYPE_11__*) ;
 int KAUTH_DEBUG (char*,int) ;
 scalar_t__ KAUTH_FILESEC_NOACL ;
 int KAUTH_GID_NONE ;
 int KAUTH_UID_NONE ;
 int MNT_IGNORE_OWNERSHIP ;
 int VATTR_CLEAR_ACTIVE (struct vnode_attr*,int ) ;
 int VATTR_CLEAR_SUPPORTED (struct vnode_attr*,int ) ;
 scalar_t__ VATTR_IS_ACTIVE (struct vnode_attr*,int ) ;
 scalar_t__ VATTR_IS_SUPPORTED (struct vnode_attr*,int ) ;
 scalar_t__ VATTR_NOT_RETURNED (struct vnode_attr*,int ) ;
 int VATTR_RETURN (struct vnode_attr*,int ,int) ;
 int VATTR_SET_ACTIVE (struct vnode_attr*,int ) ;
 int VFS_KERNEL_EVENT ;
 int VNODE_ATTR_ALL ;
 int VNOP_GETATTR (TYPE_3__*,struct vnode_attr*,int ) ;
 scalar_t__ XATTR_VNODE_SUPPORTED (TYPE_3__*) ;
 int bcopy (TYPE_11__*,int *,int ) ;
 int * kauth_acl_alloc (scalar_t__) ;
 int kauth_acl_free (int *) ;
 int kauth_cred_getgid (int ) ;
 int kauth_cred_getuid (int ) ;
 int kauth_cred_guid2gid (int *,int*) ;
 int kauth_cred_guid2uid (int *,int*) ;
 int kauth_filesec_free (TYPE_4__*) ;
 int kauth_guid_equal (int *,int*) ;
 int kauth_null_guid ;
 int roundup (int,scalar_t__) ;
 int va_acl ;
 int va_change_time ;
 int va_data_alloc ;
 int va_data_size ;
 int va_filerev ;
 int va_flags ;
 int va_fsid ;
 int va_gen ;
 int va_gid ;
 int va_guuid ;
 int va_iosize ;
 int va_modify_time ;
 int va_total_alloc ;
 int va_total_size ;
 int va_type ;
 int va_uid ;
 int va_uuuid ;
 scalar_t__ vfs_context_issuser (int ) ;
 int vfs_context_ucred (int ) ;
 int vfs_extendedsecurity (int ) ;
 int vfs_update_vfsstat (TYPE_9__*,int ,int ) ;
 int vnode_get_filesec (TYPE_3__*,TYPE_4__**,int ) ;
 int vnode_mount (TYPE_3__*) ;

int
vnode_getattr(vnode_t vp, struct vnode_attr *vap, vfs_context_t ctx)
{
 kauth_filesec_t fsec;
 kauth_acl_t facl;
 int error;
 uid_t nuid;
 gid_t ngid;




 if (vap->va_active & ~VNODE_ATTR_ALL)
  return (EINVAL);


 if (!vfs_extendedsecurity(vnode_mount(vp))) {
  VATTR_CLEAR_ACTIVE(vap, va_acl);
  VATTR_CLEAR_ACTIVE(vap, va_uuuid);
  VATTR_CLEAR_ACTIVE(vap, va_guuid);
 }





 if (VATTR_IS_ACTIVE(vap, va_data_alloc) ||
     VATTR_IS_ACTIVE(vap, va_total_size) ||
     VATTR_IS_ACTIVE(vap, va_total_alloc)) {
  VATTR_SET_ACTIVE(vap, va_data_size);
  VATTR_SET_ACTIVE(vap, va_data_alloc);
  VATTR_SET_ACTIVE(vap, va_total_size);
  VATTR_SET_ACTIVE(vap, va_total_alloc);
 }

 error = VNOP_GETATTR(vp, vap, ctx);
 if (error) {
  KAUTH_DEBUG("ERROR - returning %d", error);
  goto out;
 }





 if (VATTR_NOT_RETURNED(vap, va_acl) || VATTR_NOT_RETURNED(vap, va_uuuid) || VATTR_NOT_RETURNED(vap, va_guuid)) {
  fsec = ((void*)0);

  if (XATTR_VNODE_SUPPORTED(vp)) {

   if ((error = vnode_get_filesec(vp, &fsec, ctx)) != 0)
    goto out;
  }

  if (fsec == ((void*)0)) {
   VATTR_RETURN(vap, va_acl, ((void*)0));
   VATTR_RETURN(vap, va_uuuid, kauth_null_guid);
   VATTR_RETURN(vap, va_guuid, kauth_null_guid);
  } else {


   VATTR_RETURN(vap, va_uuuid, fsec->fsec_owner);
   VATTR_RETURN(vap, va_guuid, fsec->fsec_group);


   if (VATTR_IS_ACTIVE(vap, va_acl)) {
    if (fsec->fsec_acl.acl_entrycount == KAUTH_FILESEC_NOACL) {
     VATTR_RETURN(vap, va_acl, ((void*)0));
    } else {
     facl = kauth_acl_alloc(fsec->fsec_acl.acl_entrycount);
     if (facl == ((void*)0)) {
      kauth_filesec_free(fsec);
      error = ENOMEM;
      goto out;
     }
     bcopy(&fsec->fsec_acl, facl, KAUTH_ACL_COPYSIZE(&fsec->fsec_acl));
     VATTR_RETURN(vap, va_acl, facl);
    }
   }
   kauth_filesec_free(fsec);
  }
 }





 if (VATTR_IS_SUPPORTED(vap, va_acl) && !VATTR_IS_ACTIVE(vap, va_acl)) {
  if (vap->va_acl != ((void*)0))
   kauth_acl_free(vap->va_acl);
  VATTR_CLEAR_SUPPORTED(vap, va_acl);
 }
 if (VATTR_IS_ACTIVE(vap, va_uid)) {
  if (vfs_context_issuser(ctx) && VATTR_IS_SUPPORTED(vap, va_uid)) {
   nuid = vap->va_uid;
  } else if (vp->v_mount->mnt_flag & MNT_IGNORE_OWNERSHIP) {
   nuid = vp->v_mount->mnt_fsowner;
   if (nuid == KAUTH_UID_NONE)
    nuid = 99;
  } else if (VATTR_IS_SUPPORTED(vap, va_uid)) {
   nuid = vap->va_uid;
  } else {

   nuid = vp->v_mount->mnt_fsowner;
  }
  if ((nuid == 99) && !vfs_context_issuser(ctx))
   nuid = kauth_cred_getuid(vfs_context_ucred(ctx));
  VATTR_RETURN(vap, va_uid, nuid);
 }
 if (VATTR_IS_ACTIVE(vap, va_gid)) {
  if (vfs_context_issuser(ctx) && VATTR_IS_SUPPORTED(vap, va_gid)) {
   ngid = vap->va_gid;
  } else if (vp->v_mount->mnt_flag & MNT_IGNORE_OWNERSHIP) {
   ngid = vp->v_mount->mnt_fsgroup;
   if (ngid == KAUTH_GID_NONE)
    ngid = 99;
  } else if (VATTR_IS_SUPPORTED(vap, va_gid)) {
   ngid = vap->va_gid;
  } else {

   ngid = vp->v_mount->mnt_fsgroup;
  }
  if ((ngid == 99) && !vfs_context_issuser(ctx))
   ngid = kauth_cred_getgid(vfs_context_ucred(ctx));
  VATTR_RETURN(vap, va_gid, ngid);
 }




 if (!VATTR_IS_SUPPORTED(vap, va_iosize))
  VATTR_RETURN(vap, va_iosize, vp->v_mount->mnt_vfsstat.f_iosize);

 if (!VATTR_IS_SUPPORTED(vap, va_flags))
  VATTR_RETURN(vap, va_flags, 0);

 if (!VATTR_IS_SUPPORTED(vap, va_filerev))
  VATTR_RETURN(vap, va_filerev, 0);

 if (!VATTR_IS_SUPPORTED(vap, va_gen))
  VATTR_RETURN(vap, va_gen, 0);




 if (!VATTR_IS_SUPPORTED(vap, va_data_size))
  VATTR_RETURN(vap, va_data_size, 0);


 if (VATTR_IS_ACTIVE(vap, va_data_alloc) ||
     VATTR_IS_ACTIVE(vap, va_total_size) ||
     VATTR_IS_ACTIVE(vap, va_total_alloc)) {

                if (vp->v_mount->mnt_vfsstat.f_bsize == 0) {
                    if ((error = vfs_update_vfsstat(vp->v_mount, ctx, VFS_KERNEL_EVENT)) != 0)
                        goto out;
                }


  if (!VATTR_IS_SUPPORTED(vap, va_data_alloc))
   VATTR_RETURN(vap, va_data_alloc, roundup(vap->va_data_size, vp->v_mount->mnt_vfsstat.f_bsize));


  if (!VATTR_IS_SUPPORTED(vap, va_total_size))
   VATTR_RETURN(vap, va_total_size, vap->va_data_size);


  if (!VATTR_IS_SUPPORTED(vap, va_total_alloc))
   VATTR_RETURN(vap, va_total_alloc, roundup(vap->va_total_size, vp->v_mount->mnt_vfsstat.f_bsize));
 }




 if (!VATTR_IS_SUPPORTED(vap, va_change_time) && VATTR_IS_SUPPORTED(vap, va_modify_time))
  VATTR_RETURN(vap, va_change_time, vap->va_modify_time);





 VATTR_RETURN(vap, va_type, vp->v_type);




 VATTR_RETURN(vap, va_fsid, vp->v_mount->mnt_vfsstat.f_fsid.val[0]);

out:

 return(error);
}
