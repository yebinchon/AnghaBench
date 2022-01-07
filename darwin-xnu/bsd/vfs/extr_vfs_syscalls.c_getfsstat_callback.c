
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int vfs_context_t ;
struct vfsstatfs {int dummy; } ;
struct getfsstat_struct {scalar_t__ count; scalar_t__ maxcount; int error; int flags; int * mp; scalar_t__ sfsp; } ;
typedef TYPE_1__* mount_t ;
struct TYPE_7__ {struct vfsstatfs mnt_vfsstat; } ;


 int FALSE ;
 int IS_64BIT_PROCESS (int ) ;
 int KAUTH_DEBUG (char*,int) ;
 int MNT_DWAIT ;
 int MNT_NOWAIT ;
 int MNT_WAIT ;
 int VFS_RETURNED ;
 int VFS_RETURNED_DONE ;
 int VFS_USER_EVENT ;
 int mac_mount_check_stat (int ,TYPE_1__*) ;
 int mac_mount_label_get (TYPE_1__*,int ) ;
 int munge_statfs (TYPE_1__*,struct vfsstatfs*,scalar_t__,int*,int ,int ) ;
 int vfs_context_current () ;
 int vfs_context_proc (int ) ;
 int vfs_update_vfsstat (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int
getfsstat_callback(mount_t mp, void * arg)
{

 struct getfsstat_struct *fstp = (struct getfsstat_struct *)arg;
 struct vfsstatfs *sp;
 int error, my_size;
 vfs_context_t ctx = vfs_context_current();

 if (fstp->sfsp && fstp->count < fstp->maxcount) {







  sp = &mp->mnt_vfsstat;




  if (((fstp->flags & MNT_NOWAIT) == 0 || (fstp->flags & (MNT_WAIT | MNT_DWAIT))) &&
   (error = vfs_update_vfsstat(mp, ctx,
       VFS_USER_EVENT))) {
   KAUTH_DEBUG("vfs_update_vfsstat returned %d", error);
   return(VFS_RETURNED);
  }




  error = munge_statfs(mp, sp, fstp->sfsp, &my_size, IS_64BIT_PROCESS(vfs_context_proc(ctx)), FALSE);
  if (error) {
   fstp->error = error;
   return(VFS_RETURNED_DONE);
  }
  fstp->sfsp += my_size;

  if (fstp->mp) {







   fstp->mp++;
  }
 }
 fstp->count++;
 return(VFS_RETURNED);
}
