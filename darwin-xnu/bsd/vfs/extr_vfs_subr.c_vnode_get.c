
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;


 int vnode_get_locked (struct vnode*) ;
 int vnode_lock_spin (struct vnode*) ;
 int vnode_unlock (struct vnode*) ;

int
vnode_get(struct vnode *vp)
{
        int retval;

        vnode_lock_spin(vp);
 retval = vnode_get_locked(vp);
 vnode_unlock(vp);

 return(retval);
}
