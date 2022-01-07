
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
typedef int vfs_context_t ;
struct componentname {int dummy; } ;
struct TYPE_8__ {scalar_t__ v_type; } ;


 int EINVAL ;
 int ENOTDIR ;
 int KAUTH_VNODE_DELETE ;
 scalar_t__ VDIR ;
 int mac_vnode_check_unlink (int ,TYPE_1__*,TYPE_1__*,struct componentname*) ;
 int panic (char*) ;
 int vnode_authorize (TYPE_1__*,TYPE_1__*,int ,int ) ;

int
vn_authorize_rmdir(vnode_t dvp, vnode_t vp, struct componentname *cnp, vfs_context_t ctx, void *reserved)
{



#pragma unused(cnp)

 if (reserved != ((void*)0)) {
  panic("Non-NULL reserved argument to vn_authorize_rmdir()");
 }

 if (vp->v_type != VDIR) {



  return ENOTDIR;
 }

 if (dvp == vp) {



  return EINVAL;
 }
 return vnode_authorize(vp, dvp, KAUTH_VNODE_DELETE, ctx);
}
