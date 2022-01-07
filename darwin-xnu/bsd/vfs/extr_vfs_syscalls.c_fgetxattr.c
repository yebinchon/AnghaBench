
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef scalar_t__ user_ssize_t ;
typedef int * uio_t ;
typedef int uio_buf ;
struct fgetxattr_args {int options; scalar_t__ size; int fd; int value; int position; int attrname; } ;
typedef int proc_t ;
typedef int attrname ;


 int EINVAL ;
 int EPERM ;
 scalar_t__ IS_64BIT_PROCESS (int ) ;
 int UIO_READ ;
 int UIO_SIZEOF (int) ;
 int UIO_USERSPACE32 ;
 int UIO_USERSPACE64 ;
 int XATTR_MAXNAMELEN ;
 int XATTR_NODEFAULT ;
 int XATTR_NOFOLLOW ;
 int XATTR_NOSECURITY ;
 int copyinstr (int ,char*,int,size_t*) ;
 int file_drop (int ) ;
 int file_vnode (int ,int *) ;
 int uio_addiov (int *,int ,scalar_t__) ;
 int * uio_createwithbuffer (int,int ,int,int ,char*,int) ;
 scalar_t__ uio_resid (int *) ;
 int vfs_context_current () ;
 int vn_getxattr (int ,char*,int *,size_t*,int,int ) ;
 int vnode_getwithref (int ) ;
 int vnode_put (int ) ;
 scalar_t__ xattr_protected (char*) ;

int
fgetxattr(proc_t p, struct fgetxattr_args *uap, user_ssize_t *retval)
{
 vnode_t vp;
 char attrname[XATTR_MAXNAMELEN+1];
 uio_t auio = ((void*)0);
 int spacetype = IS_64BIT_PROCESS(p) ? UIO_USERSPACE64 : UIO_USERSPACE32;
 size_t attrsize = 0;
 size_t namelen;
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
 error = copyinstr(uap->attrname, attrname, sizeof(attrname), &namelen);
 if (error != 0) {
  goto out;
 }
 if (xattr_protected(attrname)) {
  error = EPERM;
  goto out;
 }
 if (uap->value && uap->size > 0) {
  auio = uio_createwithbuffer(1, uap->position, spacetype, UIO_READ,
                              &uio_buf[0], sizeof(uio_buf));
  uio_addiov(auio, uap->value, uap->size);
 }

 error = vn_getxattr(vp, attrname, auio, &attrsize, uap->options, vfs_context_current());
out:
 (void)vnode_put(vp);
 file_drop(uap->fd);

 if (auio) {
  *retval = uap->size - uio_resid(auio);
 } else {
  *retval = (user_ssize_t)attrsize;
 }
 return (error);
}
