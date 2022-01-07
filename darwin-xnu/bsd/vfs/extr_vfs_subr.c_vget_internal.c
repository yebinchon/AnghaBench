
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
struct TYPE_6__ {scalar_t__ v_writecount; } ;


 int EINVAL ;
 int VNODE_WRITEABLE ;
 int vnode_getiocount (TYPE_1__*,int,int) ;
 int vnode_lock_spin (TYPE_1__*) ;
 int vnode_unlock (TYPE_1__*) ;

int
vget_internal(vnode_t vp, int vid, int vflags)
{
 int error = 0;

 vnode_lock_spin(vp);

 if ((vflags & VNODE_WRITEABLE) && (vp->v_writecount == 0))



         error = EINVAL;
 else
         error = vnode_getiocount(vp, vid, vflags);

 vnode_unlock(vp);

 return (error);
}
