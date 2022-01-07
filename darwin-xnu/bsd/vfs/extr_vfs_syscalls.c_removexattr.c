
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int vfs_context_t ;
typedef int u_int32_t ;
struct removexattr_args {int options; int path; int attrname; } ;
struct nameidata {int ni_vp; } ;
typedef int proc_t ;
typedef int attrname ;


 int EINVAL ;
 int EPERM ;
 int FOLLOW ;
 int FSE_ARG_DONE ;
 int FSE_ARG_VNODE ;
 int FSE_XATTR_REMOVED ;
 scalar_t__ IS_64BIT_PROCESS (int ) ;
 int LOOKUP ;
 int NDINIT (struct nameidata*,int ,int ,int ,int,int ,int ) ;
 int OP_REMOVEXATTR ;
 int UIO_USERSPACE32 ;
 int UIO_USERSPACE64 ;
 int XATTR_MAXNAMELEN ;
 int XATTR_NODEFAULT ;
 int XATTR_NOFOLLOW ;
 int XATTR_NOSECURITY ;
 int add_fsevent (int ,int ,int ,int ,int ) ;
 int copyinstr (int ,char*,int,size_t*) ;
 int namei (struct nameidata*) ;
 int nameidone (struct nameidata*) ;
 int vfs_context_current () ;
 int vn_removexattr (int ,char*,int,int ) ;
 int vnode_put (int ) ;
 scalar_t__ xattr_protected (char*) ;

int
removexattr(proc_t p, struct removexattr_args *uap, int *retval)
{
 vnode_t vp;
 struct nameidata nd;
 char attrname[XATTR_MAXNAMELEN+1];
 int spacetype = IS_64BIT_PROCESS(p) ? UIO_USERSPACE64 : UIO_USERSPACE32;
 vfs_context_t ctx = vfs_context_current();
 size_t namelen;
 u_int32_t nameiflags;
 int error;

 if (uap->options & (XATTR_NOSECURITY | XATTR_NODEFAULT))
  return (EINVAL);

 error = copyinstr(uap->attrname, attrname, sizeof(attrname), &namelen);
 if (error != 0) {
  return (error);
 }
 if (xattr_protected(attrname))
  return(EPERM);
 nameiflags = (uap->options & XATTR_NOFOLLOW) ? 0 : FOLLOW;
 NDINIT(&nd, LOOKUP, OP_REMOVEXATTR, nameiflags, spacetype, uap->path, ctx);
 if ((error = namei(&nd))) {
  return (error);
 }
 vp = nd.ni_vp;
 nameidone(&nd);

 error = vn_removexattr(vp, attrname, uap->options, ctx);







 vnode_put(vp);
 *retval = 0;
 return (error);
}
