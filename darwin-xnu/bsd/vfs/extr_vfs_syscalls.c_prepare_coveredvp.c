
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
typedef int vfs_context_t ;
struct vnode_attr {scalar_t__ va_uid; } ;
struct componentname {int dummy; } ;
typedef int boolean_t ;
struct TYPE_9__ {scalar_t__ v_type; int v_flag; int * v_mountedhere; } ;


 int BUF_WRITE_DATA ;
 int EBUSY ;
 int ENOTDIR ;
 int EPERM ;
 scalar_t__ ISSET (int ,int ) ;
 int MNT_WAIT ;
 int SET (int ,int ) ;
 int VATTR_INIT (struct vnode_attr*) ;
 int VATTR_WANTED (struct vnode_attr*,int ) ;
 scalar_t__ VDIR ;
 int VMOUNT ;
 int VNOP_FSYNC (TYPE_1__*,int ,int ) ;
 int buf_invalidateblks (TYPE_1__*,int ,int ,int ) ;
 scalar_t__ kauth_cred_getuid (int ) ;
 int mac_mount_check_mount (int ,TYPE_1__*,struct componentname*,char const*) ;
 int va_uid ;
 int vfs_context_issuser (int ) ;
 int vfs_context_ucred (int ) ;
 int vnode_getattr (TYPE_1__*,struct vnode_attr*,int ) ;
 int vnode_lock_spin (TYPE_1__*) ;
 int vnode_unlock (TYPE_1__*) ;

int
prepare_coveredvp(vnode_t vp, vfs_context_t ctx, struct componentname *cnp, const char *fsname, boolean_t skip_auth)
{

#pragma unused(cnp,fsname)

 struct vnode_attr va;
 int error;

 if (!skip_auth) {




  VATTR_INIT(&va);
  VATTR_WANTED(&va, va_uid);
  if ((error = vnode_getattr(vp, &va, ctx)) ||
    (va.va_uid != kauth_cred_getuid(vfs_context_ucred(ctx)) &&
     (!vfs_context_issuser(ctx)))) {
   error = EPERM;
   goto out;
  }
 }

 if ( (error = VNOP_FSYNC(vp, MNT_WAIT, ctx)) )
  goto out;

 if ( (error = buf_invalidateblks(vp, BUF_WRITE_DATA, 0, 0)) )
  goto out;

 if (vp->v_type != VDIR) {
  error = ENOTDIR;
  goto out;
 }

 if (ISSET(vp->v_flag, VMOUNT) && (vp->v_mountedhere != ((void*)0))) {
  error = EBUSY;
  goto out;
 }
 vnode_lock_spin(vp);
 SET(vp->v_flag, VMOUNT);
 vnode_unlock(vp);

out:
 return error;
}
