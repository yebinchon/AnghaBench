
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_offset_t ;


 int kasan_map_shadow_internal (int ,int ,int,int) ;

void
kasan_map_shadow(vm_offset_t address, vm_size_t size, bool is_zero)
{
 kasan_map_shadow_internal(address, size, is_zero, 1);
}
