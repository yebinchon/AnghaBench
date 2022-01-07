
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
typedef int vfs_context_t ;
typedef TYPE_2__* uthread_t ;
typedef scalar_t__ thread_t ;
struct mount {int dummy; } ;
struct filedesc {TYPE_1__* fd_cdir; } ;
struct fchdir_args {int fd; } ;
typedef TYPE_3__* proc_t ;
struct TYPE_19__ {int p_flag; struct filedesc* p_fd; } ;
struct TYPE_18__ {TYPE_1__* uu_cdir; } ;
struct TYPE_17__ {scalar_t__ v_type; struct mount* v_mountedhere; } ;


 int ARG_VNODE1 ;
 int AUDIT_ARG (int ,...) ;
 int EACCES ;
 int EBADF ;
 int ENOENT ;
 int ENOTDIR ;
 int KAUTH_VNODE_SEARCH ;
 int LK_NOWAIT ;
 TYPE_1__* NULLVP ;
 int OSBitOrAtomic (int ,int *) ;
 int P_THCWD ;
 scalar_t__ VDIR ;
 int VFS_ROOT (struct mount*,TYPE_1__**,int ) ;
 int fd ;
 int file_drop (int) ;
 int file_vnode (int,TYPE_1__**) ;
 TYPE_2__* get_bsdthread_info (scalar_t__) ;
 int mac_vnode_check_chdir (int ,TYPE_1__*) ;
 int proc_fdlock (TYPE_3__*) ;
 int proc_fdunlock (TYPE_3__*) ;
 scalar_t__ vfs_busy (struct mount*,int ) ;
 int vfs_context_current () ;
 scalar_t__ vfs_context_thread (int ) ;
 int vfs_unbusy (struct mount*) ;
 int vnode_authorize (TYPE_1__*,int *,int ,int ) ;
 int vnode_getwithref (TYPE_1__*) ;
 int vnode_put (TYPE_1__*) ;
 int vnode_ref (TYPE_1__*) ;
 int vnode_rele (TYPE_1__*) ;
 int vnpath ;

__attribute__((used)) static int
common_fchdir(proc_t p, struct fchdir_args *uap, int per_thread)
{
 struct filedesc *fdp = p->p_fd;
 vnode_t vp;
 vnode_t tdp;
 vnode_t tvp;
 struct mount *mp;
 int error;
 vfs_context_t ctx = vfs_context_current();

 AUDIT_ARG(fd, uap->fd);
 if (per_thread && uap->fd == -1) {






  thread_t th = vfs_context_thread(ctx);
  if (th) {
   uthread_t uth = get_bsdthread_info(th);
   tvp = uth->uu_cdir;
   uth->uu_cdir = NULLVP;
   if (tvp != NULLVP) {
    vnode_rele(tvp);
    return (0);
   }
  }
  return (EBADF);
 }

 if ( (error = file_vnode(uap->fd, &vp)) )
  return(error);
 if ( (error = vnode_getwithref(vp)) ) {
         file_drop(uap->fd);
  return(error);
 }

 AUDIT_ARG(vnpath, vp, ARG_VNODE1);

 if (vp->v_type != VDIR) {
  error = ENOTDIR;
  goto out;
 }






 error = vnode_authorize(vp, ((void*)0), KAUTH_VNODE_SEARCH, ctx);
 if (error)
  goto out;

 while (!error && (mp = vp->v_mountedhere) != ((void*)0)) {
  if (vfs_busy(mp, LK_NOWAIT)) {
   error = EACCES;
   goto out;
  }
  error = VFS_ROOT(mp, &tdp, ctx);
  vfs_unbusy(mp);
  if (error)
   break;
  vnode_put(vp);
  vp = tdp;
 }
 if (error)
  goto out;
 if ( (error = vnode_ref(vp)) )
         goto out;
 vnode_put(vp);

 if (per_thread) {
  thread_t th = vfs_context_thread(ctx);
  if (th) {
   uthread_t uth = get_bsdthread_info(th);
   tvp = uth->uu_cdir;
   uth->uu_cdir = vp;
   OSBitOrAtomic(P_THCWD, &p->p_flag);
  } else {
   vnode_rele(vp);
   return (ENOENT);
  }
 } else {
  proc_fdlock(p);
  tvp = fdp->fd_cdir;
  fdp->fd_cdir = vp;
  proc_fdunlock(p);
 }

 if (tvp)
         vnode_rele(tvp);
 file_drop(uap->fd);

 return (0);
out:
 vnode_put(vp);
 file_drop(uap->fd);

 return(error);
}
