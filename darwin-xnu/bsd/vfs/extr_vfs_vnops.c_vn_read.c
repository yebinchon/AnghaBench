
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vfs_context_t ;
struct vnode {int dummy; } ;
struct uio {int uio_offset; } ;
struct fileproc {TYPE_1__* f_fglob; } ;
typedef scalar_t__ off_t ;
struct TYPE_3__ {int fg_flag; int fg_offset; scalar_t__ fg_data; } ;


 int FENCRYPTED ;
 int FNOCACHE ;
 int FNONBLOCK ;
 int FNORDAHEAD ;
 int FOF_OFFSET ;
 int FUNENCRYPTED ;
 int IO_ENCRYPTED ;
 int IO_EVTONLY ;
 int IO_NDELAY ;
 int IO_NOCACHE ;
 int IO_RAOFF ;
 int IO_SKIP_ENCRYPTION ;
 int IO_SYSCALL_DISPATCH ;
 int O_EVTONLY ;
 int VNOP_READ (struct vnode*,struct uio*,int,int ) ;
 scalar_t__ VREG ;
 int mac_vnode_check_read (int ,int ,struct vnode*) ;
 scalar_t__ uio_resid (struct uio*) ;
 int vfs_context_ucred (int ) ;
 int vn_offset_lock (TYPE_1__*) ;
 int vn_offset_unlock (TYPE_1__*) ;
 int vn_read_swapfile (struct vnode*,struct uio*) ;
 int vnode_getwithref (struct vnode*) ;
 scalar_t__ vnode_isnocache (struct vnode*) ;
 scalar_t__ vnode_isswap (struct vnode*) ;
 int vnode_put (struct vnode*) ;
 scalar_t__ vnode_vtype (struct vnode*) ;

__attribute__((used)) static int
vn_read(struct fileproc *fp, struct uio *uio, int flags, vfs_context_t ctx)
{
 struct vnode *vp;
 int error;
 int ioflag;
 off_t count;
 int offset_locked = 0;

 vp = (struct vnode *)fp->f_fglob->fg_data;
 if ( (error = vnode_getwithref(vp)) ) {
  return(error);
 }
 ioflag = IO_SYSCALL_DISPATCH;

 if (fp->f_fglob->fg_flag & FNONBLOCK)
  ioflag |= IO_NDELAY;
 if ((fp->f_fglob->fg_flag & FNOCACHE) || vnode_isnocache(vp))
     ioflag |= IO_NOCACHE;
 if (fp->f_fglob->fg_flag & FENCRYPTED) {
  ioflag |= IO_ENCRYPTED;
 }
 if (fp->f_fglob->fg_flag & FUNENCRYPTED) {
  ioflag |= IO_SKIP_ENCRYPTION;
 }
 if (fp->f_fglob->fg_flag & O_EVTONLY) {
  ioflag |= IO_EVTONLY;
 }
 if (fp->f_fglob->fg_flag & FNORDAHEAD)
     ioflag |= IO_RAOFF;

 if ((flags & FOF_OFFSET) == 0) {
  if ((vnode_vtype(vp) == VREG) && !vnode_isswap(vp)) {
   vn_offset_lock(fp->f_fglob);
   offset_locked = 1;
  }
  uio->uio_offset = fp->f_fglob->fg_offset;
 }
 count = uio_resid(uio);

 if (vnode_isswap(vp) && !(IO_SKIP_ENCRYPTION & ioflag)) {


  error = vn_read_swapfile(vp, uio);
 } else {
  error = VNOP_READ(vp, uio, ioflag, ctx);
 }

 if ((flags & FOF_OFFSET) == 0) {
  fp->f_fglob->fg_offset += count - uio_resid(uio);
  if (offset_locked) {
   vn_offset_unlock(fp->f_fglob);
   offset_locked = 0;
  }
 }

 (void)vnode_put(vp);
 return (error);
}
