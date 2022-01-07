
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vfs_context_t ;
struct vnode {int v_label; } ;
struct socket {int so_label; } ;
struct proc {int dummy; } ;
struct pipe {int pipe_label; } ;
struct mount {int mnt_mntlabel; } ;
struct fileproc {TYPE_1__* f_fglob; } ;
struct fdescnode {int fd_fd; } ;
typedef int socket_t ;
struct TYPE_2__ {int * fg_label; scalar_t__ fg_data; } ;
 int EBADF ;
 int EINVAL ;
 int FILEGLOB_DTYPE (TYPE_1__*) ;
 int MAC_PERFORM (int ,int ,...) ;
 int PIPE_LOCK (struct pipe*) ;
 int PIPE_UNLOCK (struct pipe*) ;
 int fp_drop (struct proc*,int,struct fileproc*,int ) ;
 int fp_lookup (struct proc*,int,struct fileproc**,int ) ;
 int psem_label_associate (struct fileproc*,struct vnode*,int ) ;
 int pshm_label_associate (struct fileproc*,struct vnode*,int ) ;
 int socket_lock (struct socket*,int) ;
 int socket_unlock (struct socket*,int) ;
 struct proc* vfs_context_proc (int ) ;
 int vfs_context_ucred (int ) ;
 int vnode_getwithref (struct vnode*) ;
 int vnode_label_associate_file ;
 int vnode_label_associate_pipe ;
 int vnode_label_associate_socket ;
 int vnode_label_copy ;
 int vnode_put (struct vnode*) ;

int
mac_vnode_label_associate_fdesc(struct mount *mp, struct fdescnode *fnp,
    struct vnode *vp, vfs_context_t ctx)
{
 struct fileproc *fp;



 struct pipe *cpipe;
 struct vnode *fvp;
 struct proc *p;
 int error;

 error = 0;




 if (fnp->fd_fd == -1) {
  MAC_PERFORM(vnode_label_associate_file, vfs_context_ucred(ctx),
      mp, mp->mnt_mntlabel, ((void*)0), ((void*)0), vp, vp->v_label);
  return (0);
 }

 p = vfs_context_proc(ctx);
 error = fp_lookup(p, fnp->fd_fd, &fp, 0);
 if (error)
  return (error);

 if (fp->f_fglob == ((void*)0)) {
  error = EBADF;
  goto out;
 }

 switch (FILEGLOB_DTYPE(fp->f_fglob)) {
 case 128:
  fvp = (struct vnode *)fp->f_fglob->fg_data;
  if ((error = vnode_getwithref(fvp)))
   goto out;
  MAC_PERFORM(vnode_label_copy, fvp->v_label, vp->v_label);
  (void)vnode_put(fvp);
  break;
 case 130:
  pshm_label_associate(fp, vp, ctx);
  break;
 case 131:
  psem_label_associate(fp, vp, ctx);
  break;
 case 132:
  cpipe = (struct pipe *)fp->f_fglob->fg_data;

  if (cpipe == (struct pipe *)-1) {
   error = EINVAL;
   goto out;
  }
  PIPE_LOCK(cpipe);
  MAC_PERFORM(vnode_label_associate_pipe, vfs_context_ucred(ctx),
      cpipe, cpipe->pipe_label, vp, vp->v_label);
  PIPE_UNLOCK(cpipe);
  break;
 case 134:
 case 135:
 case 136:
 case 133:
 default:
  MAC_PERFORM(vnode_label_associate_file, vfs_context_ucred(ctx),
      mp, mp->mnt_mntlabel, fp->f_fglob, fp->f_fglob->fg_label,
      vp, vp->v_label);
  break;
 }
out:
 fp_drop(p, fnp->fd_fd, fp, 0);
 return (error);
}
