
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct null_mount {int nullm_lock; } ;


 struct null_mount* MOUNTTONULLMOUNT (int ) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int nullfs_isspecialvp (struct vnode*) ;
 int vnode_mount (struct vnode*) ;

__attribute__((used)) static int
nullfs_checkspecialvp(struct vnode* vp)
{
 int result = 0;
 struct null_mount * null_mp;

 null_mp = MOUNTTONULLMOUNT(vnode_mount(vp));

 lck_mtx_lock(&null_mp->nullm_lock);
 result = (nullfs_isspecialvp(vp));
 lck_mtx_unlock(&null_mp->nullm_lock);

 return result;
}
