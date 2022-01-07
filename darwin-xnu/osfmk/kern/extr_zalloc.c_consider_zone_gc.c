
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int PAGE_SIZE_64 ;
 int kernel_map ;
 scalar_t__ kmapoff_kaddr ;
 int kmapoff_pgcnt ;
 int vm_deallocate (int ,scalar_t__,int) ;
 int zone_gc (int ) ;
 scalar_t__ zone_gc_allowed ;

void
consider_zone_gc(boolean_t consider_jetsams)
{
 if (kmapoff_kaddr != 0) {




  (void) vm_deallocate(kernel_map,
      kmapoff_kaddr, kmapoff_pgcnt * PAGE_SIZE_64);
  kmapoff_kaddr = 0;
 }

 if (zone_gc_allowed)
  zone_gc(consider_jetsams);
}
