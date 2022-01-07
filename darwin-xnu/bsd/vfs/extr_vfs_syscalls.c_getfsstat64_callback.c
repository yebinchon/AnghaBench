
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct vfsstatfs {int dummy; } ;
struct statfs64 {int dummy; } ;
struct getfsstat_struct {scalar_t__ count; scalar_t__ maxcount; int error; int flags; scalar_t__ sfsp; } ;
typedef TYPE_1__* mount_t ;
struct TYPE_6__ {struct vfsstatfs mnt_vfsstat; } ;


 int KAUTH_DEBUG (char*,int) ;
 int MNT_DWAIT ;
 int MNT_NOWAIT ;
 int MNT_WAIT ;
 int VFS_RETURNED ;
 int VFS_RETURNED_DONE ;
 int VFS_USER_EVENT ;
 int mac_mount_check_stat (int ,TYPE_1__*) ;
 int statfs64_common (TYPE_1__*,struct vfsstatfs*,scalar_t__) ;
 int vfs_context_current () ;
 int vfs_update_vfsstat (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int
getfsstat64_callback(mount_t mp, void * arg)
{
 struct getfsstat_struct *fstp = (struct getfsstat_struct *)arg;
 struct vfsstatfs *sp;
 int error;

 if (fstp->sfsp && fstp->count < fstp->maxcount) {







  sp = &mp->mnt_vfsstat;
  if (((fstp->flags & MNT_NOWAIT) == 0 ||
       (fstp->flags & (MNT_WAIT | MNT_DWAIT))) &&
      (error = vfs_update_vfsstat(mp, vfs_context_current(), VFS_USER_EVENT))) {
   KAUTH_DEBUG("vfs_update_vfsstat returned %d", error);
   return(VFS_RETURNED);
  }

  error = statfs64_common(mp, sp, fstp->sfsp);
  if (error) {
   fstp->error = error;
   return(VFS_RETURNED_DONE);
  }
  fstp->sfsp += sizeof(struct statfs64);
 }
 fstp->count++;
 return(VFS_RETURNED);
}
