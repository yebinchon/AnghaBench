
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;
typedef scalar_t__ uint32_t ;


 int FIXED_RELOAD (scalar_t__) ;
 unsigned long long KPC_ARM64_COUNTER_MASK ;
 int assert (int) ;
 scalar_t__ kpc_configurable_count () ;
 int kpc_controls_counter (scalar_t__) ;
 scalar_t__ kpc_fixed_count () ;
 unsigned long long read_counter (scalar_t__) ;
 int write_counter (scalar_t__,int ) ;

__attribute__((used)) static uint64_t
kpc_reload_counter(uint32_t ctr)
{
 assert(ctr < (kpc_configurable_count() + kpc_fixed_count()));


 if (!kpc_controls_counter(ctr))
  return 0ULL;

 uint64_t old = read_counter(ctr);
 write_counter(ctr, FIXED_RELOAD(ctr));
 return old & KPC_ARM64_COUNTER_MASK;
}
