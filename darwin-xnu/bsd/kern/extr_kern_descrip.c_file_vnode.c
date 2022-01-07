
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct fileproc {scalar_t__ f_type; scalar_t__ f_data; } ;
typedef int proc_t ;


 scalar_t__ DTYPE_VNODE ;
 int EINVAL ;
 int current_proc () ;
 int fp_drop (int ,int,struct fileproc*,int) ;
 int fp_lookup (int ,int,struct fileproc**,int) ;
 int proc_fdlock_spin (int ) ;
 int proc_fdunlock (int ) ;

int
file_vnode(int fd, struct vnode **vpp)
{
 proc_t p = current_proc();
 struct fileproc *fp;
 int error;

 proc_fdlock_spin(p);
 if ( (error = fp_lookup(p, fd, &fp, 1)) ) {
  proc_fdunlock(p);
  return(error);
 }
 if (fp->f_type != DTYPE_VNODE) {
  fp_drop(p, fd, fp,1);
  proc_fdunlock(p);
  return(EINVAL);
 }
 if (vpp != ((void*)0))
  *vpp = (struct vnode *)fp->f_data;
 proc_fdunlock(p);

 return(0);
}
