
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
typedef enum vtype { ____Placeholder_vtype } vtype ;
struct TYPE_3__ {int v_type; int v_specflags; } ;


 int SI_ALIASED ;
 int VBLK ;
 int VCHR ;

int
vnode_isaliased(vnode_t vp)
{
 enum vtype vt = vp->v_type;
 if (!((vt == VCHR) || (vt == VBLK))) {
  return 0;
 } else {
  return (vp->v_specflags & SI_ALIASED);
 }
}
