
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
typedef int kern_return_t ;


 int KERN_SUCCESS ;
 void* ubc_get_cs_blobs (struct vnode*) ;

kern_return_t
vnode_pager_get_cs_blobs(
 struct vnode *vp,
 void **blobs)
{
 *blobs = ubc_get_cs_blobs(vp);
 return KERN_SUCCESS;
}
