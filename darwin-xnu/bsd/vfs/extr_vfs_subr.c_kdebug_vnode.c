
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int vm_offset_t ;


 int VM_KERNEL_ADDRPERM (int ) ;

vm_offset_t kdebug_vnode(vnode_t vp)
{
 return VM_KERNEL_ADDRPERM(vp);
}
