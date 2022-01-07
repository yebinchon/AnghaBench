
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int * vnode_t ;
struct vnop_getattr_args {scalar_t__ a_vp; TYPE_8__* a_vap; int a_context; } ;
struct TYPE_16__ {int tv_nsec; int tv_sec; } ;
struct TYPE_14__ {int tv_nsec; int tv_sec; } ;
struct TYPE_13__ {int tv_nsec; int tv_sec; } ;
struct vnode_attr {int va_uid; int va_gid; TYPE_6__ va_access_time; TYPE_4__ va_modify_time; TYPE_3__ va_create_time; } ;
struct null_mount {scalar_t__ nullm_secondvp; int nullm_lowerrootvid; int * nullm_lowerrootvp; } ;
typedef int mount_t ;
typedef int ino_t ;
struct TYPE_15__ {int tv_nsec; int tv_sec; } ;
struct TYPE_12__ {int tv_nsec; int tv_sec; } ;
struct TYPE_18__ {TYPE_5__ va_modify_time; TYPE_2__ va_create_time; } ;
struct TYPE_11__ {int* val; } ;
struct TYPE_17__ {int f_iosize; TYPE_1__ f_fsid; } ;


 int EIO ;
 struct null_mount* MOUNTTONULLMOUNT (int ) ;
 int NULL_ROOT_INO ;
 int NULL_SECOND_INO ;
 int S_IFDIR ;
 int S_IRGRP ;
 int S_IROTH ;
 int S_IRUSR ;
 int S_IXGRP ;
 int S_IXOTH ;
 int S_IXUSR ;
 int UF_HIDDEN ;
 int VATTR_INIT (struct vnode_attr*) ;
 scalar_t__ VATTR_IS_ACTIVE (TYPE_8__*,int ) ;
 int VATTR_RETURN (TYPE_8__*,int ,int) ;
 int VATTR_SET_SUPPORTED (TYPE_8__*,int ) ;
 int VATTR_WANTED (struct vnode_attr*,int ) ;
 int va_access_time ;
 int va_create_time ;
 int va_data_alloc ;
 int va_data_size ;
 int va_fileid ;
 int va_filerev ;
 int va_flags ;
 int va_fsid ;
 int va_gen ;
 int va_gid ;
 int va_iosize ;
 int va_linkid ;
 int va_mode ;
 int va_modify_time ;
 int va_nlink ;
 int va_parentid ;
 int va_rdev ;
 int va_total_size ;
 int va_type ;
 int va_uid ;
 TYPE_7__* vfs_statfs (int ) ;
 int * vfs_vnodecovered (int ) ;
 int vnode_getattr (int *,struct vnode_attr*,int ) ;
 scalar_t__ vnode_getwithvid (int *,int ) ;
 int vnode_mount (scalar_t__) ;
 int vnode_put (int *) ;
 int vnode_vtype (scalar_t__) ;

__attribute__((used)) static int
nullfs_special_getattr(struct vnop_getattr_args * args)
{
 mount_t mp = vnode_mount(args->a_vp);
 struct null_mount * null_mp = MOUNTTONULLMOUNT(mp);

 ino_t ino = NULL_ROOT_INO;
 struct vnode_attr covered_rootattr;
 vnode_t checkvp = null_mp->nullm_lowerrootvp;

 VATTR_INIT(&covered_rootattr);
 VATTR_WANTED(&covered_rootattr, va_uid);
 VATTR_WANTED(&covered_rootattr, va_gid);
 VATTR_WANTED(&covered_rootattr, va_create_time);
 VATTR_WANTED(&covered_rootattr, va_modify_time);
 VATTR_WANTED(&covered_rootattr, va_access_time);



 if (vnode_getwithvid(checkvp, null_mp->nullm_lowerrootvid)) {
  checkvp = vfs_vnodecovered(mp);
  if (checkvp == ((void*)0)) {
   return EIO;
  }
 }

 int error = vnode_getattr(checkvp, &covered_rootattr, args->a_context);

 vnode_put(checkvp);
 if (error) {


  return error;
 }


 if (args->a_vp == null_mp->nullm_secondvp) {
  ino = NULL_SECOND_INO;
 }

 VATTR_RETURN(args->a_vap, va_type, vnode_vtype(args->a_vp));
 VATTR_RETURN(args->a_vap, va_rdev, 0);
 VATTR_RETURN(args->a_vap, va_nlink, 3);
 VATTR_RETURN(args->a_vap, va_total_size, 0);

 VATTR_RETURN(args->a_vap, va_data_size, 0);
 VATTR_RETURN(args->a_vap, va_data_alloc, 0);
 VATTR_RETURN(args->a_vap, va_iosize, vfs_statfs(mp)->f_iosize);
 VATTR_RETURN(args->a_vap, va_fileid, ino);
 VATTR_RETURN(args->a_vap, va_linkid, ino);
 VATTR_RETURN(args->a_vap, va_fsid, vfs_statfs(mp)->f_fsid.val[0]);
 VATTR_RETURN(args->a_vap, va_filerev, 0);
 VATTR_RETURN(args->a_vap, va_gen, 0);
 VATTR_RETURN(args->a_vap, va_flags, UF_HIDDEN);


 if (ino == NULL_SECOND_INO) {
  VATTR_RETURN(args->a_vap, va_parentid, NULL_ROOT_INO);




 }

 if (VATTR_IS_ACTIVE(args->a_vap, va_mode)) {

  VATTR_RETURN(args->a_vap, va_mode, S_IFDIR | S_IRUSR | S_IXUSR | S_IRGRP | S_IXGRP | S_IROTH | S_IXOTH);
 }
 if (VATTR_IS_ACTIVE(args->a_vap, va_uid)) {
  VATTR_RETURN(args->a_vap, va_uid, covered_rootattr.va_uid);
 }
 if (VATTR_IS_ACTIVE(args->a_vap, va_gid)) {
  VATTR_RETURN(args->a_vap, va_gid, covered_rootattr.va_gid);
 }

 if (VATTR_IS_ACTIVE(args->a_vap, va_create_time)) {
  VATTR_SET_SUPPORTED(args->a_vap, va_create_time);
  args->a_vap->va_create_time.tv_sec = covered_rootattr.va_create_time.tv_sec;
  args->a_vap->va_create_time.tv_nsec = covered_rootattr.va_create_time.tv_nsec;
 }
 if (VATTR_IS_ACTIVE(args->a_vap, va_modify_time)) {
  VATTR_SET_SUPPORTED(args->a_vap, va_modify_time);
  args->a_vap->va_modify_time.tv_sec = covered_rootattr.va_modify_time.tv_sec;
  args->a_vap->va_modify_time.tv_nsec = covered_rootattr.va_modify_time.tv_nsec;
 }
 if (VATTR_IS_ACTIVE(args->a_vap, va_access_time)) {
  VATTR_SET_SUPPORTED(args->a_vap, va_access_time);
  args->a_vap->va_modify_time.tv_sec = covered_rootattr.va_access_time.tv_sec;
  args->a_vap->va_modify_time.tv_nsec = covered_rootattr.va_access_time.tv_nsec;
 }

 return 0;
}
