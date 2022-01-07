
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef scalar_t__ user_ssize_t ;
typedef int * uio_t ;
typedef int uio_buf ;
struct flistxattr_args {int options; scalar_t__ bufsize; int fd; int namebuf; } ;
typedef int proc_t ;


 int EINVAL ;
 int UIO_READ ;
 int UIO_SIZEOF (int) ;
 int UIO_USERSPACE32 ;
 int UIO_USERSPACE64 ;
 int XATTR_NODEFAULT ;
 int XATTR_NOFOLLOW ;
 int XATTR_NOSECURITY ;
 int file_drop (int ) ;
 int file_vnode (int ,int *) ;
 scalar_t__ proc_is64bit (int ) ;
 int uio_addiov (int *,int ,scalar_t__) ;
 int * uio_createwithbuffer (int,int ,int,int ,char*,int) ;
 scalar_t__ uio_resid (int *) ;
 int vfs_context_current () ;
 int vn_listxattr (int ,int *,size_t*,int,int ) ;
 int vnode_getwithref (int ) ;
 int vnode_put (int ) ;

int
flistxattr(proc_t p, struct flistxattr_args *uap, user_ssize_t *retval)
{
 vnode_t vp;
 uio_t auio = ((void*)0);
 int spacetype = proc_is64bit(p) ? UIO_USERSPACE64 : UIO_USERSPACE32;
 size_t attrsize = 0;
 int error;
 char uio_buf[ UIO_SIZEOF(1) ];

 if (uap->options & (XATTR_NOFOLLOW | XATTR_NOSECURITY | XATTR_NODEFAULT))
  return (EINVAL);

 if ( (error = file_vnode(uap->fd, &vp)) ) {
  return (error);
 }
 if ( (error = vnode_getwithref(vp)) ) {
  file_drop(uap->fd);
  return(error);
 }
 if (uap->namebuf != 0 && uap->bufsize > 0) {
  auio = uio_createwithbuffer(1, 0, spacetype,
             UIO_READ, &uio_buf[0], sizeof(uio_buf));
  uio_addiov(auio, uap->namebuf, uap->bufsize);
 }

 error = vn_listxattr(vp, auio, &attrsize, uap->options, vfs_context_current());

 vnode_put(vp);
 file_drop(uap->fd);
 if (auio) {
  *retval = (user_ssize_t)uap->bufsize - uio_resid(auio);
 } else {
  *retval = (user_ssize_t)attrsize;
 }
 return (error);
}
