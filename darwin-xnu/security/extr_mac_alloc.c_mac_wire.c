
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CAST_USER_ADDR_T (void*) ;
 int FALSE ;
 int VM_KERN_MEMORY_SECURITY ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 int kalloc_map ;
 int vm_map_wire_kernel (int ,int ,int ,int,int ,int ) ;

int
mac_wire(void *start, void *end)
{

 return (vm_map_wire_kernel(kalloc_map, CAST_USER_ADDR_T(start),
  CAST_USER_ADDR_T(end), VM_PROT_READ|VM_PROT_WRITE, VM_KERN_MEMORY_SECURITY, FALSE));
}
