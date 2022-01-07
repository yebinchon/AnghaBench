
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int vfs_context_t ;
struct vnode_attr {int dummy; } ;
struct componentname {int * cn_ndp; } ;


 int KAUTH_VNODE_ADD_SUBDIRECTORY ;
 int lookup_validate_creation_path (int *) ;
 int mac_vnode_check_create (int ,int ,struct componentname*,struct vnode_attr*) ;
 int panic (char*) ;
 int vnode_authorize (int ,int *,int ,int ) ;
 scalar_t__ vnode_compound_mkdir_available (int ) ;

int
vn_authorize_mkdir(vnode_t dvp, struct componentname *cnp, struct vnode_attr *vap, vfs_context_t ctx, void *reserved)
{

#pragma unused(vap)

 int error;

 if (reserved != ((void*)0)) {
  panic("reserved not NULL in vn_authorize_mkdir()");
 }


 if (cnp->cn_ndp == ((void*)0)) {
  return 0;
 }

 if (vnode_compound_mkdir_available(dvp)) {
  error = lookup_validate_creation_path(cnp->cn_ndp);
  if (error)
   goto out;
 }
   if ((error = vnode_authorize(dvp, ((void*)0), KAUTH_VNODE_ADD_SUBDIRECTORY, ctx)) != 0)
    goto out;

out:
 return error;
}
