
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;


 int ubc_info_init_internal (struct vnode*,int ,int ) ;

int
ubc_info_init(struct vnode *vp)
{
 return(ubc_info_init_internal(vp, 0, 0));
}
