
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * vnode_t ;
typedef int * vfs_context_t ;
typedef int u_int32_t ;
struct nameidata {int * ni_vp; } ;
typedef int errno_t ;


 int CAST_USER_ADDR_T (char const*) ;
 int CN_NBMOUNTLOOK ;
 int FOLLOW ;
 int LOOKUP ;
 int NDINIT (struct nameidata*,int ,int ,int ,int ,int ,int *) ;
 int NOCROSSMOUNT ;
 int NOFOLLOW ;
 int OP_OPEN ;
 int O_NOFOLLOW ;
 int UIO_SYSSPACE ;
 int VNODE_LOOKUP_CROSSMOUNTNOWAIT ;
 int VNODE_LOOKUP_NOCROSSMOUNT ;
 int VNODE_LOOKUP_NOFOLLOW ;
 int * vfs_context_current () ;
 int vn_open (struct nameidata*,int,int) ;

errno_t
vnode_open(const char *path, int fmode, int cmode, int flags, vnode_t *vpp, vfs_context_t ctx)
{
 struct nameidata nd;
 int error;
 u_int32_t ndflags = 0;
 int lflags = flags;

 if (ctx == ((void*)0)) {
  ctx = vfs_context_current();
 }

 if (fmode & O_NOFOLLOW)
  lflags |= VNODE_LOOKUP_NOFOLLOW;

 if (lflags & VNODE_LOOKUP_NOFOLLOW)
  ndflags = NOFOLLOW;
 else
  ndflags = FOLLOW;

 if (lflags & VNODE_LOOKUP_NOCROSSMOUNT)
  ndflags |= NOCROSSMOUNT;

 if (lflags & VNODE_LOOKUP_CROSSMOUNTNOWAIT)
  ndflags |= CN_NBMOUNTLOOK;


 NDINIT(&nd, LOOKUP, OP_OPEN, ndflags, UIO_SYSSPACE,
        CAST_USER_ADDR_T(path), ctx);

 if ((error = vn_open(&nd, fmode, cmode)))
  *vpp = ((void*)0);
 else
  *vpp = nd.ni_vp;

 return (error);
}
