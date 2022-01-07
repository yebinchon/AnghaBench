
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct vfs_context {int vc_ucred; int * vc_thread; } ;
struct flock {int l_type; scalar_t__ l_len; scalar_t__ l_start; int l_whence; } ;
struct fileproc {int f_flags; } ;
struct fileglob {scalar_t__ fg_count; int fg_lock; int fg_lflags; int fg_flag; scalar_t__ fg_data; int fg_cred; } ;
typedef TYPE_1__* proc_t ;
typedef int caddr_t ;
struct TYPE_6__ {int p_ladvflag; } ;


 scalar_t__ DTYPE_VNODE ;
 int FG_TERM ;
 scalar_t__ FILEGLOB_DTYPE (struct fileglob*) ;
 int FP_WRITTEN ;
 int FWASWRITTEN ;
 int F_POSIX ;
 int F_UNLCK ;
 int P_LADVLOCK ;
 int SEEK_SET ;
 int VNOP_ADVLOCK (struct vnode*,int ,int ,struct flock*,int ,struct vfs_context*,int *) ;
 TYPE_1__* current_proc () ;
 int * current_thread () ;
 int fg_free (struct fileglob*) ;
 int fo_close (struct fileglob*,struct vfs_context*) ;
 int lck_mtx_lock_spin (int *) ;
 int lck_mtx_unlock (int *) ;
 int panic (char*,struct fileglob*,scalar_t__) ;
 int proc_fdlock (TYPE_1__*) ;
 int proc_fdunlock (TYPE_1__*) ;
 int vnode_getwithref (struct vnode*) ;
 int vnode_put (struct vnode*) ;

int
closef_locked(struct fileproc *fp, struct fileglob *fg, proc_t p)
{
 struct vnode *vp;
 struct flock lf;
 struct vfs_context context;
 int error;

 if (fg == ((void*)0)) {
  return (0);
 }


 if (p == current_proc())
  context.vc_thread = current_thread();
 else
  context.vc_thread = ((void*)0);
 context.vc_ucred = fg->fg_cred;
 if (p && (p->p_ladvflag & P_LADVLOCK) &&
     DTYPE_VNODE == FILEGLOB_DTYPE(fg)) {
  proc_fdunlock(p);

  lf.l_whence = SEEK_SET;
  lf.l_start = 0;
  lf.l_len = 0;
  lf.l_type = F_UNLCK;
  vp = (struct vnode *)fg->fg_data;

  if ( (error = vnode_getwithref(vp)) == 0 ) {
   (void) VNOP_ADVLOCK(vp, (caddr_t)p, F_UNLCK, &lf, F_POSIX, &context, ((void*)0));
   (void)vnode_put(vp);
  }
  proc_fdlock(p);
 }
 lck_mtx_lock_spin(&fg->fg_lock);
 fg->fg_count--;

 if (fg->fg_count > 0) {
  lck_mtx_unlock(&fg->fg_lock);
  return (0);
 }





 if (fp && (fp->f_flags & FP_WRITTEN))
         fg->fg_flag |= FWASWRITTEN;

 fg->fg_lflags |= FG_TERM;
 lck_mtx_unlock(&fg->fg_lock);

 if (p)
  proc_fdunlock(p);



 error = fo_close(fg, &context);

 fg_free(fg);

 if (p)
  proc_fdlock(p);

 return(error);
}
