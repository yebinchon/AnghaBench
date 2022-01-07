
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ppnum_t ;
typedef scalar_t__ boolean_t ;


 unsigned int INTEL_EPT_WB ;
 unsigned int INTEL_PTE_PTA ;
 int IS_MANAGED_PAGE (size_t) ;
 unsigned int PHYS_NCACHE ;
 unsigned int PHYS_PTA ;
 unsigned int PTE_NCACHE (scalar_t__) ;
 scalar_t__ last_managed_page ;
 unsigned int* pmap_phys_attributes ;
 size_t ppn_to_pai (int ) ;

unsigned pmap_get_cache_attributes(ppnum_t pn, boolean_t is_ept) {
 if (last_managed_page == 0)
  return 0;

 if (!IS_MANAGED_PAGE(ppn_to_pai(pn)))
     return PTE_NCACHE(is_ept);




 unsigned int attr = pmap_phys_attributes[ppn_to_pai(pn)];
 unsigned int template = 0;




 if ((attr & PHYS_PTA) && !is_ept)
  template |= INTEL_PTE_PTA;





 if (attr & PHYS_NCACHE)
  template |= PTE_NCACHE(is_ept);
 else if (is_ept)
  template |= INTEL_EPT_WB;

 return template;
}
