
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnop_inactive_args {struct vnode* a_vp; } ;
struct vnode {int v_type; } ;


 int VNON ;

int
fdesc_inactive(struct vnop_inactive_args *ap)
{
 struct vnode *vp = ap->a_vp;





 vp->v_type = VNON;

 return (0);
}
