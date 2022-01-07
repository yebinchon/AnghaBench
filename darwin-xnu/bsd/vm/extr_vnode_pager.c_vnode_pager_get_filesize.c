
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_object_offset_t ;
struct vnode {int dummy; } ;


 int ubc_getsize (struct vnode*) ;

vm_object_offset_t
vnode_pager_get_filesize(struct vnode *vp)
{
 return (vm_object_offset_t) ubc_getsize(vp);
}
