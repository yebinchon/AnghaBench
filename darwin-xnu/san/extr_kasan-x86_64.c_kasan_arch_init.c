
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int I386_LPGBYTES ;
 int __nosan_bzero (void*,int ) ;
 int kasan_map_shadow_superpage_zero (scalar_t__,scalar_t__) ;
 scalar_t__ phys2virt (int ) ;
 scalar_t__ physmap_base ;
 scalar_t__ physmap_max ;
 int zero_superpage_phys ;

void
kasan_arch_init(void)
{
 __nosan_bzero((void *)phys2virt(zero_superpage_phys), I386_LPGBYTES);


 kasan_map_shadow_superpage_zero(physmap_base, physmap_max - physmap_base);
}
