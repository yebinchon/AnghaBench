
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_map_offset_t ;
typedef int pmap_t ;
typedef int pd_entry_t ;
typedef int boolean_t ;


 int FALSE ;
 int INTEL_PDPTE_NESTED ;
 int NBPDPT ;
 int PMAP_LOCK (int ) ;
 int PMAP_UNLOCK (int ) ;
 int TRUE ;
 int cpu_64bit ;
 int* pmap64_pdpt (int ,int) ;

boolean_t pmap_adjust_unnest_parameters(pmap_t p, vm_map_offset_t *s, vm_map_offset_t *e) {
 pd_entry_t *pdpte;
 boolean_t rval = FALSE;

 if (!cpu_64bit)
  return rval;

 PMAP_LOCK(p);

 pdpte = pmap64_pdpt(p, *s);
 if (pdpte && (*pdpte & INTEL_PDPTE_NESTED)) {
  *s &= ~(NBPDPT -1);
  rval = TRUE;
 }

 pdpte = pmap64_pdpt(p, *e);
 if (pdpte && (*pdpte & INTEL_PDPTE_NESTED)) {
  *e = ((*e + NBPDPT) & ~(NBPDPT -1));
  rval = TRUE;
 }

 PMAP_UNLOCK(p);

 return rval;
}
