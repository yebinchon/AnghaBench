
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;


 int assert (int) ;
 scalar_t__ kpc_configurable_count () ;
 scalar_t__ kpc_popcount (int ) ;

uint32_t
kpc_configurable_config_count(uint64_t pmc_mask)
{
 assert(kpc_popcount(pmc_mask) <= kpc_configurable_count());
 return kpc_popcount(pmc_mask);
}
