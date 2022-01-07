
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
struct TYPE_6__ {scalar_t__ v_type; int v_usecount; int v_kusecount; } ;


 scalar_t__ VREG ;
 int ubc_isinuse_locked (TYPE_1__*,int,int) ;
 int vnode_lock_spin (TYPE_1__*) ;
 int vnode_unlock (TYPE_1__*) ;

__attribute__((used)) static int
vnode_isinuse_locked(vnode_t vp, int refcnt, int locked)
{
 int retval = 0;

 if (!locked)
  vnode_lock_spin(vp);
 if ((vp->v_type != VREG) && ((vp->v_usecount - vp->v_kusecount) > refcnt)) {
  retval = 1;
  goto out;
 }
 if (vp->v_type == VREG) {
  retval = ubc_isinuse_locked(vp, refcnt, 1);
 }

out:
 if (!locked)
  vnode_unlock(vp);
 return(retval);
}
