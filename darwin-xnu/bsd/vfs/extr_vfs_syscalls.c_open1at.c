
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vnode_t ;
typedef int vfs_context_t ;
struct vnode_attr {int dummy; } ;
struct TYPE_2__ {int cn_flags; int cn_context; } ;
struct nameidata {TYPE_1__ ni_cnd; int ni_dvp; scalar_t__ ni_dirp; int ni_segflg; } ;
typedef int int32_t ;
typedef int fp_allocfn_t ;


 int AT_FDCWD ;
 int ENOTDIR ;
 scalar_t__ UIO_SEG_IS_USER_SPACE (int ) ;
 int USEDVP ;
 scalar_t__ VDIR ;
 int copyin (scalar_t__,char*,int) ;
 int open1 (int ,struct nameidata*,int,struct vnode_attr*,int ,void*,int *) ;
 int vnode_getfromfd (int ,int,int *) ;
 int vnode_put (int ) ;
 scalar_t__ vnode_vtype (int ) ;

__attribute__((used)) static int
open1at(vfs_context_t ctx, struct nameidata *ndp, int uflags,
    struct vnode_attr *vap, fp_allocfn_t fp_zalloc, void *cra, int32_t *retval,
    int dirfd)
{
 if ((dirfd != AT_FDCWD) && !(ndp->ni_cnd.cn_flags & USEDVP)) {
  int error;
  char c;

  if (UIO_SEG_IS_USER_SPACE(ndp->ni_segflg)) {
   error = copyin(ndp->ni_dirp, &c, sizeof(char));
   if (error)
    return (error);
  } else {
   c = *((char *)(ndp->ni_dirp));
  }

  if (c != '/') {
   vnode_t dvp_at;

   error = vnode_getfromfd(ndp->ni_cnd.cn_context, dirfd,
       &dvp_at);
   if (error)
    return (error);

   if (vnode_vtype(dvp_at) != VDIR) {
    vnode_put(dvp_at);
    return (ENOTDIR);
   }

   ndp->ni_dvp = dvp_at;
   ndp->ni_cnd.cn_flags |= USEDVP;
   error = open1(ctx, ndp, uflags, vap, fp_zalloc, cra,
       retval);
   vnode_put(dvp_at);
   return (error);
  }
 }

 return (open1(ctx, ndp, uflags, vap, fp_zalloc, cra, retval));
}
