
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int vfs_context_t ;
typedef size_t user_ssize_t ;
typedef int * uio_t ;
typedef int uio_buf ;
typedef int u_int32_t ;
struct nameidata {int ni_vp; } ;
struct getxattr_args {int options; int size; int value; int position; int attrname; int path; } ;
typedef int proc_t ;
typedef int attrname ;


 int EINVAL ;
 int EPERM ;
 int FOLLOW ;
 scalar_t__ IS_64BIT_PROCESS (int ) ;
 int LOOKUP ;
 int NDINIT (struct nameidata*,int ,int ,int ,int,int ,int ) ;
 int OP_GETXATTR ;
 int UIO_READ ;
 int UIO_SIZEOF (int) ;
 int UIO_USERSPACE32 ;
 int UIO_USERSPACE64 ;
 int XATTR_MAXNAMELEN ;
 size_t XATTR_MAXSIZE ;
 int XATTR_NODEFAULT ;
 int XATTR_NOFOLLOW ;
 int XATTR_NOSECURITY ;
 int copyinstr (int ,char*,int,size_t*) ;
 int namei (struct nameidata*) ;
 int nameidone (struct nameidata*) ;
 scalar_t__ strcmp (char*,char*) ;
 int uio_addiov (int *,int ,size_t) ;
 int * uio_createwithbuffer (int,int ,int,int ,char*,int) ;
 size_t uio_resid (int *) ;
 int vfs_context_current () ;
 int vfs_context_issuser (int ) ;
 int vn_getxattr (int ,char*,int *,size_t*,int,int ) ;
 int vnode_put (int ) ;
 scalar_t__ xattr_protected (char*) ;

int
getxattr(proc_t p, struct getxattr_args *uap, user_ssize_t *retval)
{
 vnode_t vp;
 struct nameidata nd;
 char attrname[XATTR_MAXNAMELEN+1];
 vfs_context_t ctx = vfs_context_current();
 uio_t auio = ((void*)0);
 int spacetype = IS_64BIT_PROCESS(p) ? UIO_USERSPACE64 : UIO_USERSPACE32;
 size_t attrsize = 0;
 size_t namelen;
 u_int32_t nameiflags;
 int error;
 char uio_buf[ UIO_SIZEOF(1) ];

 if (uap->options & (XATTR_NOSECURITY | XATTR_NODEFAULT))
  return (EINVAL);

 nameiflags = (uap->options & XATTR_NOFOLLOW) ? 0 : FOLLOW;
 NDINIT(&nd, LOOKUP, OP_GETXATTR, nameiflags, spacetype, uap->path, ctx);
 if ((error = namei(&nd))) {
  return (error);
 }
 vp = nd.ni_vp;
 nameidone(&nd);

 error = copyinstr(uap->attrname, attrname, sizeof(attrname), &namelen);
 if (error != 0) {
  goto out;
 }
 if (xattr_protected(attrname)) {
  if (!vfs_context_issuser(ctx) || strcmp(attrname, "com.apple.system.Security") != 0) {
   error = EPERM;
   goto out;
  }
 }
 if (uap->size == 0xffffffff || uap->size == (size_t)-1)
  goto no_uio;

 if (uap->value) {
  if (uap->size > (size_t)XATTR_MAXSIZE)
   uap->size = XATTR_MAXSIZE;

  auio = uio_createwithbuffer(1, uap->position, spacetype, UIO_READ,
                              &uio_buf[0], sizeof(uio_buf));
  uio_addiov(auio, uap->value, uap->size);
 }
no_uio:
 error = vn_getxattr(vp, attrname, auio, &attrsize, uap->options, ctx);
out:
 vnode_put(vp);

 if (auio) {
  *retval = uap->size - uio_resid(auio);
 } else {
  *retval = (user_ssize_t)attrsize;
 }

 return (error);
}
