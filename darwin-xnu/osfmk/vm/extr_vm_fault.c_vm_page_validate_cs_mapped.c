
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;


 int vm_page_validate_cs_fast (int ) ;
 int vm_page_validate_cs_mapped_slow (int ,void const*) ;

void
vm_page_validate_cs_mapped(
 vm_page_t page,
 const void *kaddr)
{
 if (!vm_page_validate_cs_fast(page)) {
  vm_page_validate_cs_mapped_slow(page, kaddr);
 }
}
