
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;


 unsigned long long FIXED_RELOAD (int ) ;
 unsigned long long FIXED_SHADOW (int ) ;
 unsigned long long IA32_FIXED_CTRx (int) ;
 int MSR_IA32_PERF_GLOBAL_STATUS ;
 int ctr ;
 int kpc_fixed_count () ;
 unsigned long long kpc_fixed_max () ;
 unsigned long long rdmsr64 (int ) ;

int
kpc_get_fixed_counters(uint64_t *counterv)
{
 int i, n = kpc_fixed_count();
 for( i = 0; i < n; i++ )
  counterv[i] = IA32_FIXED_CTRx(i);


 return 0;
}
