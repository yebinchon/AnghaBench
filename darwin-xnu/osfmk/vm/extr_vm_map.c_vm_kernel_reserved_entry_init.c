
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_map_links {int dummy; } ;
struct vm_map_entry {int dummy; } ;


 int PAGE_SIZE ;
 int TRUE ;
 int vm_map_entry_reserved_zone ;
 int vm_map_holes_zone ;
 int vm_map_supports_hole_optimization ;
 int zone_prio_refill_configure (int ,int) ;

void
vm_kernel_reserved_entry_init(void) {
 zone_prio_refill_configure(vm_map_entry_reserved_zone, (6*PAGE_SIZE)/sizeof(struct vm_map_entry));




 zone_prio_refill_configure(vm_map_holes_zone, (6*PAGE_SIZE)/sizeof(struct vm_map_links));
 vm_map_supports_hole_optimization = TRUE;
}
