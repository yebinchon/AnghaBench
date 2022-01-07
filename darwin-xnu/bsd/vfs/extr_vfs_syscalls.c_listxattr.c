
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int vfs_context_t ;
typedef scalar_t__ user_ssize_t ;
typedef int * uio_t ;
typedef int uio_buf ;
typedef int u_int32_t ;
struct nameidata {int ni_vp; } ;
struct listxattr_args {int options; scalar_t__ bufsize; int namebuf; int path; } ;
typedef int proc_t ;


 int EINVAL ;
 int FOLLOW ;
 scalar_t__ IS_64BIT_PROCESS (int ) ;
 int LOOKUP ;
 int NDINIT (struct nameidata*,int ,int ,int ,int,int ,int ) ;
 int OP_LISTXATTR ;
 int UIO_READ ;
 int UIO_SIZEOF (int) ;
 int UIO_USERSPACE32 ;
 int UIO_USERSPACE64 ;
 int XATTR_NODEFAULT ;
 int XATTR_NOFOLLOW ;
 int XATTR_NOSECURITY ;
 int namei (struct nameidata*) ;
 int nameidone (struct nameidata*) ;
 int uio_addiov (int *,int ,scalar_t__) ;
 int * uio_createwithbuffer (int,int ,int,int ,char*,int) ;
 scalar_t__ uio_resid (int *) ;
 int vfs_context_current () ;
 int vn_listxattr (int ,int *,size_t*,int,int ) ;
 int vnode_put (int ) ;

int
listxattr(proc_t p, struct listxattr_args *uap, user_ssize_t *retval)
{
 vnode_t vp;
 struct nameidata nd;
 vfs_context_t ctx = vfs_context_current();
 uio_t auio = ((void*)0);
 int spacetype = IS_64BIT_PROCESS(p) ? UIO_USERSPACE64 : UIO_USERSPACE32;
 size_t attrsize = 0;
 u_int32_t nameiflags;
 int error;
 char uio_buf[ UIO_SIZEOF(1) ];

 if (uap->options & (XATTR_NOSECURITY | XATTR_NODEFAULT))
  return (EINVAL);

 nameiflags = (uap->options & XATTR_NOFOLLOW) ? 0 : FOLLOW;
 NDINIT(&nd, LOOKUP, OP_LISTXATTR, nameiflags, spacetype, uap->path, ctx);
 if ((error = namei(&nd))) {
  return (error);
 }
 vp = nd.ni_vp;
 nameidone(&nd);
 if (uap->namebuf != 0 && uap->bufsize > 0) {
  auio = uio_createwithbuffer(1, 0, spacetype, UIO_READ,
                              &uio_buf[0], sizeof(uio_buf));
  uio_addiov(auio, uap->namebuf, uap->bufsize);
 }

 error = vn_listxattr(vp, auio, &attrsize, uap->options, ctx);

 vnode_put(vp);
 if (auio) {
  *retval = (user_ssize_t)uap->bufsize - uio_resid(auio);
 } else {
  *retval = (user_ssize_t)attrsize;
 }
 return (error);
}
