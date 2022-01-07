
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;
struct vnode_attr {int dummy; } ;
struct attrlist {int dummy; } ;
typedef int ssize_t ;
typedef enum vtype { ____Placeholder_vtype } vtype ;


 int IS_64BIT_PROCESS (int ) ;
 int getattrlist_setupvattr_all (struct attrlist*,struct vnode_attr*,int,int *,int ,int) ;
 int vfs_context_proc (int ) ;

int
vfs_setup_vattr_from_attrlist(struct attrlist *alp, struct vnode_attr *vap,
    enum vtype obj_vtype, ssize_t *attrs_fixed_sizep, vfs_context_t ctx)
{


 return (getattrlist_setupvattr_all(alp, vap, obj_vtype,
     attrs_fixed_sizep, IS_64BIT_PROCESS(vfs_context_proc(ctx)), 1));
}
