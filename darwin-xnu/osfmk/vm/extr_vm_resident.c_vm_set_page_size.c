
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int PAGE_MASK ;
 unsigned int PAGE_SHIFT ;
 unsigned int PAGE_SIZE ;
 unsigned int page_mask ;
 unsigned int page_shift ;
 unsigned int page_size ;
 int panic (char*) ;

void
vm_set_page_size(void)
{
 page_size = PAGE_SIZE;
 page_mask = PAGE_MASK;
 page_shift = PAGE_SHIFT;

 if ((page_mask & page_size) != 0)
  panic("vm_set_page_size: page size not a power of two");

 for (page_shift = 0; ; page_shift++)
  if ((1U << page_shift) == page_size)
   break;
}
