
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_usecount; int v_kusecount; } ;


 int vnode_lock_spin (struct vnode*) ;
 int vnode_unlock (struct vnode*) ;

int
ubc_isinuse_locked(struct vnode *vp, int busycount, int locked)
{
 int retval = 0;


 if (!locked)
  vnode_lock_spin(vp);

 if ((vp->v_usecount - vp->v_kusecount) > busycount)
  retval = 1;

 if (!locked)
  vnode_unlock(vp);
 return (retval);
}
