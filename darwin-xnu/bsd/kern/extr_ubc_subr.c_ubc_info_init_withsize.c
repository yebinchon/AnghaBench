
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
typedef int off_t ;


 int ubc_info_init_internal (struct vnode*,int,int ) ;

int
ubc_info_init_withsize(struct vnode *vp, off_t filesize)
{
 return(ubc_info_init_internal(vp, 1, filesize));
}
