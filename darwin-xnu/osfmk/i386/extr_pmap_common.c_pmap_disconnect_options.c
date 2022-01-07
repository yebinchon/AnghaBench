
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ppnum_t ;


 int IS_MANAGED_PAGE (size_t) ;
 unsigned int PHYS_MODIFIED ;
 unsigned int PHYS_REFERENCED ;
 unsigned int PMAP_OPTIONS_NOREFMOD ;
 unsigned int VM_MEM_MODIFIED ;
 unsigned int VM_MEM_REFERENCED ;
 int pmap_assert (int) ;
 int pmap_page_protect_options (size_t,int ,unsigned int,void*) ;
 unsigned int* pmap_phys_attributes ;
 size_t vm_page_fictitious_addr ;
 size_t vm_page_guard_addr ;

unsigned int
pmap_disconnect_options(ppnum_t pa, unsigned int options, void *arg)
{
 unsigned refmod, vmrefmod = 0;

 pmap_page_protect_options(pa, 0, options, arg);

 pmap_assert(pa != vm_page_fictitious_addr);
 if ((pa == vm_page_guard_addr) || !IS_MANAGED_PAGE(pa) || (options & PMAP_OPTIONS_NOREFMOD))
  return 0;
 refmod = pmap_phys_attributes[pa] & (PHYS_MODIFIED | PHYS_REFERENCED);

 if (refmod & PHYS_MODIFIED)
         vmrefmod |= VM_MEM_MODIFIED;
 if (refmod & PHYS_REFERENCED)
         vmrefmod |= VM_MEM_REFERENCED;

 return vmrefmod;
}
