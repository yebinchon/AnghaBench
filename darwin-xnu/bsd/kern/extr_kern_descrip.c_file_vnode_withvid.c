
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct vnode* vnode_t ;
typedef scalar_t__ uint32_t ;
struct vnode {scalar_t__ v_id; } ;
struct fileproc {scalar_t__ f_type; scalar_t__ f_data; } ;
typedef int proc_t ;


 scalar_t__ DTYPE_VNODE ;
 int EINVAL ;
 struct vnode* NULLVP ;
 int current_proc () ;
 int fp_drop (int ,int,struct fileproc*,int) ;
 int fp_lookup (int ,int,struct fileproc**,int) ;
 int proc_fdlock_spin (int ) ;
 int proc_fdunlock (int ) ;

int
file_vnode_withvid(int fd, struct vnode **vpp, uint32_t * vidp)
{
 proc_t p = current_proc();
 struct fileproc *fp;
 vnode_t vp;
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
 vp = (struct vnode *)fp->f_data;
 if (vpp != ((void*)0))
  *vpp = vp;

 if ((vidp != ((void*)0)) && (vp != NULLVP))
  *vidp = (uint32_t)vp->v_id;

 proc_fdunlock(p);

 return(0);
}
