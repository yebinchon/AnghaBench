
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
typedef scalar_t__ vm_page_t ;
typedef scalar_t__ vm_offset_t ;


 scalar_t__ PAGE_SIZE ;
 int THREAD_UNINT ;
 int VM_PAGE_CHECK (scalar_t__) ;
 int VM_PAGE_FREE (scalar_t__) ;
 int VM_PAGE_GET_PHYS_PAGE (scalar_t__) ;
 scalar_t__ VM_PAGE_NULL ;
 int pmap_zero_part_page (int ,scalar_t__,scalar_t__) ;
 int vm_page_copy (scalar_t__,scalar_t__) ;
 scalar_t__ vm_page_grab () ;
 int vm_page_part_copy (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int vm_page_wait (int ) ;
 int vm_page_zero_fill (scalar_t__) ;

void
vm_page_part_zero_fill(
 vm_page_t m,
 vm_offset_t m_pa,
 vm_size_t len)
{
 vm_page_t tmp;
 while (1) {
         tmp = vm_page_grab();
  if (tmp == VM_PAGE_NULL) {
   vm_page_wait(THREAD_UNINT);
   continue;
  }
  break;
 }
 vm_page_zero_fill(tmp);
 if(m_pa != 0) {
  vm_page_part_copy(m, 0, tmp, 0, m_pa);
 }
 if((m_pa + len) < PAGE_SIZE) {
  vm_page_part_copy(m, m_pa + len, tmp,
    m_pa + len, PAGE_SIZE - (m_pa + len));
 }
 vm_page_copy(tmp,m);
 VM_PAGE_FREE(tmp);


}
