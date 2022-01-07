
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {scalar_t__ v_type; scalar_t__ v_ubcinfo; } ;


 scalar_t__ UBC_INFO_NULL ;
 scalar_t__ VREG ;

int
UBCINFOEXISTS(const struct vnode * vp)
{
        return((vp) && ((vp)->v_type == VREG) && ((vp)->v_ubcinfo != UBC_INFO_NULL));
}
