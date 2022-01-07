
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {TYPE_1__* v_ubcinfo; } ;
typedef int off_t ;
struct TYPE_2__ {int ui_size; } ;


 int UBCINFOEXISTS (struct vnode*) ;

off_t
ubc_getsize(struct vnode *vp)
{



 if (!UBCINFOEXISTS(vp))
  return ((off_t)0);
 return (vp->v_ubcinfo->ui_size);
}
