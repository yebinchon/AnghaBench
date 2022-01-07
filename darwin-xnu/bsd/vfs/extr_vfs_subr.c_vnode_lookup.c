
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int * vfs_context_t ;
typedef int u_int32_t ;
struct nameidata {int ni_vp; } ;
typedef int errno_t ;


 int CAST_USER_ADDR_T (char const*) ;
 int CN_NBMOUNTLOOK ;
 int EINVAL ;
 int FOLLOW ;
 int LOOKUP ;
 int NDINIT (struct nameidata*,int ,int ,int ,int ,int ,int *) ;
 int NOCROSSMOUNT ;
 int NOFOLLOW ;
 int OP_LOOKUP ;
 int UIO_SYSSPACE ;
 int VNODE_LOOKUP_CROSSMOUNTNOWAIT ;
 int VNODE_LOOKUP_NOCROSSMOUNT ;
 int VNODE_LOOKUP_NOFOLLOW ;
 int namei (struct nameidata*) ;
 int nameidone (struct nameidata*) ;

errno_t
vnode_lookup(const char *path, int flags, vnode_t *vpp, vfs_context_t ctx)
{
 struct nameidata nd;
 int error;
 u_int32_t ndflags = 0;

 if (ctx == ((void*)0)) {
  return EINVAL;
 }

 if (flags & VNODE_LOOKUP_NOFOLLOW)
  ndflags = NOFOLLOW;
 else
  ndflags = FOLLOW;

 if (flags & VNODE_LOOKUP_NOCROSSMOUNT)
  ndflags |= NOCROSSMOUNT;

 if (flags & VNODE_LOOKUP_CROSSMOUNTNOWAIT)
  ndflags |= CN_NBMOUNTLOOK;


 NDINIT(&nd, LOOKUP, OP_LOOKUP, ndflags, UIO_SYSSPACE,
        CAST_USER_ADDR_T(path), ctx);

 if ((error = namei(&nd)))
  return (error);
 *vpp = nd.ni_vp;
 nameidone(&nd);

 return (0);
}
