
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vfs_context_t ;
typedef int u_long ;
struct vnode {int v_type; int v_rdev; } ;
struct session {int s_ttyvid; struct vnode* s_ttyvp; } ;
struct fileproc {TYPE_1__* f_fglob; } ;
typedef int off_t ;
typedef scalar_t__ caddr_t ;
struct TYPE_6__ {int d_type; } ;
struct TYPE_5__ {int d_type; } ;
struct TYPE_4__ {int fg_offset; int fg_flag; scalar_t__ fg_data; } ;


 int DKIOCSETBLOCKSIZE ;
 int ENOTTY ;
 int ENXIO ;
 int EPERM ;
 int FIOASYNC ;
 int FIODTYPE ;
 int FIONBIO ;
 int FIONREAD ;
 int TIOCSCTTY ;




 int VNOP_IOCTL (struct vnode*,int ,scalar_t__,int ,int ) ;

 TYPE_3__* bdevsw ;
 TYPE_2__* cdevsw ;
 int mac_vnode_check_ioctl (int ,struct vnode*,int ) ;
 size_t major (int ) ;
 size_t nblkdev ;
 size_t nchrdev ;
 struct session* proc_session (int ) ;
 int session_lock (struct session*) ;
 int session_rele (struct session*) ;
 int session_unlock (struct session*) ;
 int vfs_context_proc (int ) ;
 int vnode_getwithref (struct vnode*) ;
 int vnode_put (struct vnode*) ;
 int vnode_size (struct vnode*,int*,int ) ;
 int vnode_vid (struct vnode*) ;

__attribute__((used)) static int
vn_ioctl(struct fileproc *fp, u_long com, caddr_t data, vfs_context_t ctx)
{
 struct vnode *vp = ((struct vnode *)fp->f_fglob->fg_data);
 off_t file_size;
 int error;
 struct vnode *ttyvp;
 struct session * sessp;

 if ( (error = vnode_getwithref(vp)) ) {
  return(error);
 }







 switch (vp->v_type) {
 case 128:
 case 130:
  if (com == FIONREAD) {
   if ((error = vnode_size(vp, &file_size, ctx)) != 0)
    goto out;
   *(int *)data = file_size - fp->f_fglob->fg_offset;
   goto out;
  }
  if (com == FIONBIO || com == FIOASYNC) {
   goto out;
  }


 default:
  error = ENOTTY;
  goto out;

 case 129:
 case 131:
 case 132:


  if (com == DKIOCSETBLOCKSIZE) {
   error = EPERM;
   goto out;
  }

  if (com == FIODTYPE) {
   if (vp->v_type == 132) {
    if (major(vp->v_rdev) >= nblkdev) {
     error = ENXIO;
     goto out;
    }
    *(int *)data = bdevsw[major(vp->v_rdev)].d_type;

   } else if (vp->v_type == 131) {
    if (major(vp->v_rdev) >= nchrdev) {
     error = ENXIO;
     goto out;
    }
    *(int *)data = cdevsw[major(vp->v_rdev)].d_type;
   } else {
    error = ENOTTY;
    goto out;
   }
   goto out;
  }
  error = VNOP_IOCTL(vp, com, data, fp->f_fglob->fg_flag, ctx);

  if (error == 0 && com == TIOCSCTTY) {
   sessp = proc_session(vfs_context_proc(ctx));

   session_lock(sessp);
   ttyvp = sessp->s_ttyvp;
   sessp->s_ttyvp = vp;
   sessp->s_ttyvid = vnode_vid(vp);
   session_unlock(sessp);
   session_rele(sessp);
  }
 }
out:
 (void)vnode_put(vp);
 return(error);
}
