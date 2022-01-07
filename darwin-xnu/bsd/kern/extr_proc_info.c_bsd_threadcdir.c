
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
struct uthread {TYPE_1__* uu_cdir; } ;
struct TYPE_3__ {int v_id; } ;


 TYPE_1__* NULLVP ;

void
bsd_threadcdir(void * uth, void *vptr, int *vidp)
{
 struct uthread * ut = (struct uthread *)uth;
 vnode_t vp;
 vnode_t *vpp = (vnode_t *)vptr;

 vp = ut->uu_cdir;
 if (vp != NULLVP) {
  if (vpp != ((void*)0)) {
   *vpp = vp;
   if (vidp != ((void*)0))
    *vidp = vp->v_id;
  }
 }
}
