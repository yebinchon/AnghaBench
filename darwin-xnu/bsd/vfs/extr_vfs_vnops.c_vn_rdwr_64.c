
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uio_t ;
typedef int uio_buf ;
typedef int uint64_t ;
struct vnode {int dummy; } ;
struct vfs_context {int vc_ucred; int vc_thread; } ;
typedef int proc_t ;
typedef int off_t ;
typedef int kauth_cred_t ;
typedef scalar_t__ int64_t ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;
typedef enum uio_rw { ____Placeholder_uio_rw } uio_rw ;


 int EIO ;
 int EPERM ;
 int IO_NOAUTH ;
 int IO_SKIP_ENCRYPTION ;
 int IO_SWAP_DISPATCH ;
 int UIO_READ ;
 scalar_t__ UIO_SEG_IS_USER_SPACE (int) ;
 int UIO_SIZEOF (int) ;
 int UIO_SYSSPACE ;
 int UIO_USERSPACE32 ;
 int UIO_USERSPACE64 ;
 int VNOP_READ (struct vnode*,int ,int,struct vfs_context*) ;
 int VNOP_WRITE (struct vnode*,int ,int,struct vfs_context*) ;
 int current_thread () ;
 int mac_vnode_check_read (struct vfs_context*,int ,struct vnode*) ;
 int mac_vnode_check_write (struct vfs_context*,int ,struct vnode*) ;
 scalar_t__ proc_is64bit (int ) ;
 int uio_addiov (int ,int ,scalar_t__) ;
 int uio_createwithbuffer (int,int ,int,int,char*,int) ;
 scalar_t__ uio_resid (int ) ;
 int vn_read_swapfile (struct vnode*,int ) ;
 scalar_t__ vnode_isswap (struct vnode*) ;

int
vn_rdwr_64(
 enum uio_rw rw,
 struct vnode *vp,
 uint64_t base,
 int64_t len,
 off_t offset,
 enum uio_seg segflg,
 int ioflg,
 kauth_cred_t cred,
 int64_t *aresid,
 proc_t p)
{
 uio_t auio;
 int spacetype;
 struct vfs_context context;
 int error=0;
 char uio_buf[ UIO_SIZEOF(1) ];

 context.vc_thread = current_thread();
 context.vc_ucred = cred;

 if (UIO_SEG_IS_USER_SPACE(segflg)) {
  spacetype = proc_is64bit(p) ? UIO_USERSPACE64 : UIO_USERSPACE32;
 }
 else {
  spacetype = UIO_SYSSPACE;
 }
 auio = uio_createwithbuffer(1, offset, spacetype, rw,
          &uio_buf[0], sizeof(uio_buf));
 uio_addiov(auio, base, len);
 if (error == 0) {
  if (rw == UIO_READ) {
   if (vnode_isswap(vp) && ((ioflg & IO_SWAP_DISPATCH) == 0)) {
    error = vn_read_swapfile(vp, auio);
   } else {
    error = VNOP_READ(vp, auio, ioflg, &context);
   }
  } else {
   if (vnode_isswap(vp) && ((ioflg & (IO_SWAP_DISPATCH | IO_SKIP_ENCRYPTION)) == 0)) {
    error = EPERM;
   } else {
    error = VNOP_WRITE(vp, auio, ioflg, &context);
   }

  }
 }

 if (aresid)
  *aresid = uio_resid(auio);
 else
  if (uio_resid(auio) && error == 0)
   error = EIO;
 return (error);
}
