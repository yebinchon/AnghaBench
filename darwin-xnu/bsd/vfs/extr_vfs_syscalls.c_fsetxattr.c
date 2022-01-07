
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int vfs_context_t ;
typedef int * uio_t ;
typedef int uio_buf ;
struct fsetxattr_args {int options; int fd; int size; int value; int position; int attrname; } ;
typedef int proc_t ;
typedef int attrname ;


 int EINVAL ;
 int ENAMETOOLONG ;
 int EPERM ;
 int FSE_ARG_DONE ;
 int FSE_ARG_VNODE ;
 int FSE_XATTR_MODIFIED ;
 scalar_t__ IS_64BIT_PROCESS (int ) ;
 int UIO_SIZEOF (int) ;
 int UIO_USERSPACE32 ;
 int UIO_USERSPACE64 ;
 int UIO_WRITE ;
 int XATTR_MAXNAMELEN ;
 int XATTR_NODEFAULT ;
 int XATTR_NOFOLLOW ;
 int XATTR_NOSECURITY ;
 int add_fsevent (int ,int ,int ,int ,int ) ;
 int copyinstr (int ,char*,int,size_t*) ;
 int file_drop (int ) ;
 int file_vnode (int ,int *) ;
 int uio_addiov (int *,int ,int ) ;
 int * uio_createwithbuffer (int,int ,int,int ,char*,int) ;
 int vfs_context_current () ;
 int vn_setxattr (int ,char*,int *,int,int ) ;
 int vnode_getwithref (int ) ;
 int vnode_put (int ) ;
 scalar_t__ xattr_protected (char*) ;

int
fsetxattr(proc_t p, struct fsetxattr_args *uap, int *retval)
{
 vnode_t vp;
 char attrname[XATTR_MAXNAMELEN+1];
 uio_t auio = ((void*)0);
 int spacetype = IS_64BIT_PROCESS(p) ? UIO_USERSPACE64 : UIO_USERSPACE32;
 size_t namelen;
 int error;
 char uio_buf[ UIO_SIZEOF(1) ];




 if (uap->options & (XATTR_NOFOLLOW | XATTR_NOSECURITY | XATTR_NODEFAULT))
  return (EINVAL);

 error = copyinstr(uap->attrname, attrname, sizeof(attrname), &namelen);
 if (error != 0) {
  if (error == EPERM) {

   return (ENAMETOOLONG);
  }

  return error;
 }
 if (xattr_protected(attrname))
  return(EPERM);
 if (uap->size != 0 && uap->value == 0) {
  return (EINVAL);
 }
 if ( (error = file_vnode(uap->fd, &vp)) ) {
  return (error);
 }
 if ( (error = vnode_getwithref(vp)) ) {
  file_drop(uap->fd);
  return(error);
 }
 auio = uio_createwithbuffer(1, uap->position, spacetype, UIO_WRITE,
                             &uio_buf[0], sizeof(uio_buf));
 uio_addiov(auio, uap->value, uap->size);

 error = vn_setxattr(vp, attrname, auio, uap->options, vfs_context_current());







 vnode_put(vp);
 file_drop(uap->fd);
 *retval = 0;
 return (error);
}
