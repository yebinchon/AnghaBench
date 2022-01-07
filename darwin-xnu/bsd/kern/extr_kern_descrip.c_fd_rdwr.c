
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ user_ssize_t ;
typedef int * uio_t ;
typedef int uio_buf ;
typedef int uint64_t ;
struct vfs_context {int vc_ucred; } ;
struct fileproc {scalar_t__ f_type; int f_flag; TYPE_1__* f_fglob; } ;
typedef int proc_t ;
typedef int off_t ;
typedef scalar_t__ int64_t ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;
typedef enum uio_rw { ____Placeholder_uio_rw } uio_rw ;
struct TYPE_2__ {int fg_cred; } ;


 scalar_t__ DTYPE_PIPE ;
 scalar_t__ DTYPE_SOCKET ;
 scalar_t__ DTYPE_VNODE ;
 int EBADF ;
 int EINVAL ;
 int EIO ;
 int FOF_OFFSET ;
 int FREAD ;
 int FWRITE ;
 int IO_APPEND ;
 int UIO_READ ;
 scalar_t__ UIO_SEG_IS_USER_SPACE (int) ;
 int UIO_SIZEOF (int) ;
 int UIO_SYSSPACE ;
 int UIO_USERSPACE32 ;
 int UIO_USERSPACE64 ;
 int UIO_WRITE ;
 int current_proc () ;
 int fo_read (struct fileproc*,int *,int,struct vfs_context*) ;
 int fo_write (struct fileproc*,int *,int,struct vfs_context*) ;
 int fp_drop (int ,int,struct fileproc*,int ) ;
 int fp_drop_written (int ,int,struct fileproc*) ;
 int fp_lookup (int ,int,struct fileproc**,int ) ;
 scalar_t__ proc_is64bit (int ) ;
 int uio_addiov (int *,int ,scalar_t__) ;
 int * uio_createwithbuffer (int,int ,int,int,char*,int) ;
 scalar_t__ uio_resid (int *) ;
 struct vfs_context* vfs_context_current () ;

int
fd_rdwr(
 int fd,
 enum uio_rw rw,
 uint64_t base,
 int64_t len,
 enum uio_seg segflg,
 off_t offset,
 int io_flg,
 int64_t *aresid)
{
        struct fileproc *fp;
 proc_t p;
        int error = 0;
 int flags = 0;
 int spacetype;
 uio_t auio = ((void*)0);
 char uio_buf[ UIO_SIZEOF(1) ];
 struct vfs_context context = *(vfs_context_current());
 bool wrote_some = 0;

 p = current_proc();

        error = fp_lookup(p, fd, &fp, 0);
        if (error)
                return(error);

 if (fp->f_type != DTYPE_VNODE && fp->f_type != DTYPE_PIPE && fp->f_type != DTYPE_SOCKET) {
  error = EINVAL;
  goto out;
 }
 if (rw == UIO_WRITE && !(fp->f_flag & FWRITE)) {
                error = EBADF;
  goto out;
 }

 if (rw == UIO_READ && !(fp->f_flag & FREAD)) {
      error = EBADF;
      goto out;
 }

 context.vc_ucred = fp->f_fglob->fg_cred;

 if (UIO_SEG_IS_USER_SPACE(segflg))
  spacetype = proc_is64bit(p) ? UIO_USERSPACE64 : UIO_USERSPACE32;
 else
  spacetype = UIO_SYSSPACE;

 auio = uio_createwithbuffer(1, offset, spacetype, rw, &uio_buf[0], sizeof(uio_buf));

 uio_addiov(auio, base, len);

 if ( !(io_flg & IO_APPEND))
  flags = FOF_OFFSET;

 if (rw == UIO_WRITE) {
  user_ssize_t orig_resid = uio_resid(auio);
  error = fo_write(fp, auio, flags, &context);
  wrote_some = uio_resid(auio) < orig_resid;
 } else
  error = fo_read(fp, auio, flags, &context);

 if (aresid)
  *aresid = uio_resid(auio);
 else {
  if (uio_resid(auio) && error == 0)
   error = EIO;
 }
out:
        if (wrote_some)
                fp_drop_written(p, fd, fp);
        else
                fp_drop(p, fd, fp, 0);

 return error;
}
