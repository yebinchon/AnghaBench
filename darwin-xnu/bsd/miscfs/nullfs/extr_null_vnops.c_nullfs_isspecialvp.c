
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct null_mount {struct vnode* nullm_secondvp; struct vnode* nullm_rootvp; } ;


 struct null_mount* MOUNTTONULLMOUNT (int ) ;
 int vnode_mount (struct vnode*) ;

__attribute__((used)) static int
nullfs_isspecialvp(struct vnode * vp)
{
 struct null_mount * null_mp;

 null_mp = MOUNTTONULLMOUNT(vnode_mount(vp));



 if (vp && (vp == null_mp->nullm_rootvp || vp == null_mp->nullm_secondvp)) {
  return 1;
 }
 return 0;
}
