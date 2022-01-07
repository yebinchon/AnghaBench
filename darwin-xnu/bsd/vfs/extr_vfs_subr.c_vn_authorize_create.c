
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vnode_t ;
typedef int vfs_context_t ;
struct vnode_attr {int dummy; } ;
struct componentname {TYPE_1__* cn_ndp; } ;
struct TYPE_2__ {int ni_flag; } ;


 int KAUTH_VNODE_ADD_FILE ;
 int NAMEI_UNFINISHED ;
 int lookup_validate_creation_path (TYPE_1__*) ;
 int mac_vnode_check_create (int ,int ,struct componentname*,struct vnode_attr*) ;
 int panic (char*) ;
 int vnode_authorize (int ,int *,int ,int ) ;

int
vn_authorize_create(vnode_t dvp, struct componentname *cnp, struct vnode_attr *vap, vfs_context_t ctx, void *reserved)
{

#pragma unused(vap)


 int error;

 if (cnp->cn_ndp == ((void*)0)) {
  panic("NULL cn_ndp");
 }
 if (reserved != ((void*)0)) {
  panic("reserved not NULL.");
 }


 if (cnp->cn_ndp->ni_flag & NAMEI_UNFINISHED) {
  error = lookup_validate_creation_path(cnp->cn_ndp);
  if (error)
   return (error);
 }







 return (vnode_authorize(dvp, ((void*)0), KAUTH_VNODE_ADD_FILE, ctx));
}
