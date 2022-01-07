
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
typedef int vm_offset_t ;
typedef scalar_t__ uint32_t ;
typedef int boolean_t ;
typedef int addr64_t ;


 int FALSE ;
 int PAGE_MASK ;
 int PAGE_SIZE ;
 int TRUE ;
 int i386_btop (int) ;
 int kvtophys (int ) ;
 int pmap_valid_page (int ) ;

boolean_t ml_validate_nofault(
 vm_offset_t virtsrc, vm_size_t size)
{
 addr64_t cur_phys_src;
 uint32_t count;

 while (size > 0) {
  if (!(cur_phys_src = kvtophys(virtsrc)))
   return FALSE;
  if (!pmap_valid_page(i386_btop(cur_phys_src)))
   return FALSE;
  count = (uint32_t)(PAGE_SIZE - (cur_phys_src & PAGE_MASK));
  if (count > size)
   count = (uint32_t)size;

  virtsrc += count;
  size -= count;
 }

 return TRUE;
}
