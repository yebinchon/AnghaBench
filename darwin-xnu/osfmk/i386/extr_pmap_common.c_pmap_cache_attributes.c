
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ppnum_t ;


 int FALSE ;
 int INTEL_PTE_NCACHE ;
 unsigned int VM_WIMG_COPYBACK ;
 unsigned int VM_WIMG_IO ;
 int pmap_get_cache_attributes (int ,int ) ;

unsigned int pmap_cache_attributes(ppnum_t pn) {
 if (pmap_get_cache_attributes(pn, FALSE) & INTEL_PTE_NCACHE)
         return (VM_WIMG_IO);
 else
  return (VM_WIMG_COPYBACK);
}
