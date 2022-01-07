
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ VM_MAX_KERNEL_ADDRESS ;
 scalar_t__ VM_MIN_KERNEL_ADDRESS ;
 int kasan_map_shadow (scalar_t__,scalar_t__,int) ;
 int kasan_map_shadow_internal (scalar_t__,scalar_t__,int,int) ;
 scalar_t__ kernel_vtop ;
 scalar_t__ physmap_vtop ;

void
kasan_arch_init(void)
{

 kasan_map_shadow(kernel_vtop, physmap_vtop - kernel_vtop, 1);





}
