
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ ARM_PGBYTES ;
 scalar_t__ FALSE ;
 int assert (int) ;
 int avail_start ;
 scalar_t__ phystokv (int ) ;
 scalar_t__ ropage_next ;
 int ropagetable_begin ;
 int ropagetable_end ;

vm_offset_t alloc_ptpage(boolean_t map_static) {
 vm_offset_t vaddr;


 map_static = FALSE;


 if (!ropage_next) {
  ropage_next = (vm_offset_t)&ropagetable_begin;
 }

 if (map_static) {
  assert(ropage_next < (vm_offset_t)&ropagetable_end);

  vaddr = ropage_next;
  ropage_next += ARM_PGBYTES;

  return vaddr;
 } else {
  vaddr = phystokv(avail_start);
  avail_start += ARM_PGBYTES;

  return vaddr;
 }
}
