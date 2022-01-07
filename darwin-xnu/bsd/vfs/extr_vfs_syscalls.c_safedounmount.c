
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vfs_context_t ;
struct TYPE_4__ {scalar_t__ f_owner; } ;
struct mount {int mnt_kern_flag; int mnt_flag; TYPE_1__ mnt_vfsstat; } ;
typedef TYPE_2__* proc_t ;
struct TYPE_5__ {int p_acflag; } ;


 int EBUSY ;
 int MNTK_BACKS_ROOT ;
 int MNTK_PERMIT_UNMOUNT ;
 int MNT_FORCE ;
 int MNT_LNOTRESP ;
 int MNT_NOBLOCK ;
 int MNT_ROOTFS ;
 int dounmount (struct mount*,int,int,int ) ;
 int kauth_cred_get () ;
 scalar_t__ kauth_cred_getuid (int ) ;
 int mount_drop (struct mount*,int ) ;
 int suser (int ,int *) ;
 TYPE_2__* vfs_context_proc (int ) ;

int
safedounmount(struct mount *mp, int flags, vfs_context_t ctx)
{
 int error;
 proc_t p = vfs_context_proc(ctx);





 if ((mp->mnt_kern_flag & MNT_LNOTRESP) &&
  (flags & MNT_NOBLOCK) && ((flags & MNT_FORCE) == 0)) {
  error = EBUSY;
  goto out;
 }





 if (!(((mp->mnt_kern_flag & MNTK_PERMIT_UNMOUNT) != 0) && ((flags & MNT_FORCE) == 0))) {




  if ((mp->mnt_vfsstat.f_owner != kauth_cred_getuid(kauth_cred_get())) &&
    (error = suser(kauth_cred_get(), &p->p_acflag)))
   goto out;
 }



 if (mp->mnt_flag & MNT_ROOTFS) {
  error = EBUSY;
  goto out;
 }
 return (dounmount(mp, flags, 1, ctx));

out:
 mount_drop(mp, 0);
 return(error);
}
