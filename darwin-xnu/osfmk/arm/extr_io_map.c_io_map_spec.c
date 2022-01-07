
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_offset_t ;
typedef int vm_map_offset_t ;


 int io_map (int ,int ,unsigned int) ;

vm_offset_t
io_map_spec(vm_map_offset_t phys_addr, vm_size_t size, unsigned int flags)
{
 return (io_map(phys_addr, size, flags));
}
