
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;


 int vnode_lock_spin (int ) ;
 int vnode_put_locked (int ) ;
 int vnode_unlock (int ) ;

int
vnode_put(vnode_t vp)
{
        int retval;

 vnode_lock_spin(vp);
 retval = vnode_put_locked(vp);
 vnode_unlock(vp);

 return(retval);
}
