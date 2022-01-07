
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {TYPE_1__* v_ubcinfo; } ;
struct TYPE_2__ {scalar_t__ cs_add_gen; } ;


 int ENEEDAUTH ;
 scalar_t__ UBCINFOEXISTS (struct vnode*) ;
 scalar_t__ cs_blob_generation_count ;
 int vnode_lock_spin (struct vnode*) ;
 int vnode_unlock (struct vnode*) ;

int
ubc_cs_generation_check(
 struct vnode *vp)
{
 int retval = ENEEDAUTH;

 vnode_lock_spin(vp);

 if (UBCINFOEXISTS(vp) && vp->v_ubcinfo->cs_add_gen == cs_blob_generation_count) {
  retval = 0;
 }

 vnode_unlock(vp);
 return retval;
}
