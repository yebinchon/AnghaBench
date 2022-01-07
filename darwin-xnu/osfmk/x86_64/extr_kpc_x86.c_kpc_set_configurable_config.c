
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;
typedef unsigned long long uint32_t ;
typedef int kpc_config_t ;


 unsigned long long IA32_PMCx (unsigned long long) ;
 unsigned long long kpc_configurable_count () ;
 int wrIA32_PERFEVTSELx (unsigned long long,int) ;
 int wrIA32_PMCx (unsigned long long,unsigned long long) ;

__attribute__((used)) static int
kpc_set_configurable_config(kpc_config_t *configv, uint64_t pmc_mask)
{
 uint32_t cfg_count = kpc_configurable_count();
 uint64_t save;

 for (uint32_t i = 0; i < cfg_count; i++ ) {
  if (((1ULL << i) & pmc_mask) == 0)
   continue;


  save = IA32_PMCx(i);
  wrIA32_PERFEVTSELx(i, *configv & 0xffc7ffffull);
  wrIA32_PMCx(i, save);


  configv++;
 }

 return 0;
}
