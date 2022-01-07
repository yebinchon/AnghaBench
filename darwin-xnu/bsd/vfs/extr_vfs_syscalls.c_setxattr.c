
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int vfs_context_t ;
typedef int * uio_t ;
typedef int uio_buf ;
typedef int u_int32_t ;
struct setxattr_args {int options; int size; int value; int position; int path; int attrname; } ;
struct nameidata {int ni_vp; } ;
typedef int proc_t ;
typedef int attrname ;


 int EINVAL ;
 int ENAMETOOLONG ;
 int EPERM ;
 int FOLLOW ;
 int FSE_ARG_DONE ;
 int FSE_ARG_VNODE ;
 int FSE_XATTR_MODIFIED ;
 scalar_t__ IS_64BIT_PROCESS (int ) ;
 int LOOKUP ;
 int NDINIT (struct nameidata*,int ,int ,int ,int,int ,int ) ;
 int OP_SETXATTR ;
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
 int namei (struct nameidata*) ;
 int nameidone (struct nameidata*) ;
 int uio_addiov (int *,int ,int ) ;
 int * uio_createwithbuffer (int,int ,int,int ,char*,int) ;
 int vfs_context_current () ;
 int vn_setxattr (int ,char*,int *,int,int ) ;
 int vnode_put (int ) ;
 scalar_t__ xattr_protected (char*) ;

int
setxattr(proc_t p, struct setxattr_args *uap, int *retval)
{
 vnode_t vp;
 struct nameidata nd;
 char attrname[XATTR_MAXNAMELEN+1];
 vfs_context_t ctx = vfs_context_current();
 uio_t auio = ((void*)0);
 int spacetype = IS_64BIT_PROCESS(p) ? UIO_USERSPACE64 : UIO_USERSPACE32;
 size_t namelen;
 u_int32_t nameiflags;
 int error;
 char uio_buf[ UIO_SIZEOF(1) ];

 if (uap->options & (XATTR_NOSECURITY | XATTR_NODEFAULT))
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

 nameiflags = (uap->options & XATTR_NOFOLLOW) ? 0 : FOLLOW;
 NDINIT(&nd, LOOKUP, OP_SETXATTR, nameiflags, spacetype, uap->path, ctx);
 if ((error = namei(&nd))) {
  return (error);
 }
 vp = nd.ni_vp;
 nameidone(&nd);

 auio = uio_createwithbuffer(1, uap->position, spacetype, UIO_WRITE,
                             &uio_buf[0], sizeof(uio_buf));
 uio_addiov(auio, uap->value, uap->size);

 error = vn_setxattr(vp, attrname, auio, uap->options, ctx);







 vnode_put(vp);
 *retval = 0;
 return (error);
}
