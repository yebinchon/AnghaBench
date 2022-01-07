
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int override ;


 int COLOR_GROUPS_TO_STEAL ;
 unsigned int DEFAULT_COLORS ;
 unsigned int MAX_COLORS ;
 scalar_t__ PE_parse_boot_argn (char*,unsigned int*,int) ;
 int real_ncpus ;
 int vm_cache_geometry_colors ;
 int vm_clump_shift ;
 int vm_clump_size ;
 unsigned int vm_color_mask ;
 int vm_colors ;
 int vm_free_magazine_refill_limit ;

__attribute__((used)) static void
vm_page_set_colors( void )
{
 unsigned int n, override;



 vm_cache_geometry_colors >>= vm_clump_shift;

 if ( PE_parse_boot_argn("colors", &override, sizeof (override)) )
  n = override;
 else if ( vm_cache_geometry_colors )
  n = vm_cache_geometry_colors;
 else n = DEFAULT_COLORS;

 if ( n == 0 )
  n = 1;
 if ( n > MAX_COLORS )
  n = MAX_COLORS;


 if ( ( n & (n - 1)) != 0 )
         n = DEFAULT_COLORS;

 vm_colors = n;
 vm_color_mask = n - 1;

 vm_free_magazine_refill_limit = vm_colors * COLOR_GROUPS_TO_STEAL;



 if (real_ncpus)
  vm_free_magazine_refill_limit *= (vm_clump_size * real_ncpus);

}
