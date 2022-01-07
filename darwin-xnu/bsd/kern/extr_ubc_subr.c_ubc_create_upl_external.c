
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int upl_t ;
typedef int upl_page_info_t ;
struct vnode {int dummy; } ;
typedef int off_t ;
typedef int kern_return_t ;


 int ubc_create_upl_kernel (struct vnode*,int ,int,int *,int **,int,int ) ;
 int vm_tag_bt () ;

kern_return_t
ubc_create_upl_external(
 struct vnode *vp,
 off_t f_offset,
 int bufsize,
 upl_t *uplp,
 upl_page_info_t **plp,
 int uplflags)
{
    return (ubc_create_upl_kernel(vp, f_offset, bufsize, uplp, plp, uplflags, vm_tag_bt()));
}
