
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
typedef int boolean_t ;


 int FALSE ;
 int IA32_PERFEVTSEL_EN ;
 int IA32_PERFEVTSEL_PMI ;
 int IA32_PERFEVTSELx (scalar_t__) ;
 int IA32_PMCx (scalar_t__) ;
 int MSR_IA32_PERF_GLOBAL_CTRL ;
 scalar_t__ kpc_configurable_count () ;
 int ml_set_interrupts_enabled (int ) ;
 int rdmsr64 (int ) ;
 int wrIA32_PERFEVTSELx (scalar_t__,int) ;
 int wrIA32_PMCx (scalar_t__,int) ;
 int wrmsr64 (int ,int) ;

__attribute__((used)) static void
set_running_configurable(uint64_t target_mask, uint64_t state_mask)
{
 uint32_t cfg_count = kpc_configurable_count();
 uint64_t global = 0ULL, cfg = 0ULL, save = 0ULL;
 boolean_t enabled;

 enabled = ml_set_interrupts_enabled(FALSE);


 global = rdmsr64(MSR_IA32_PERF_GLOBAL_CTRL);


 for (uint32_t i = 0; i < cfg_count; ++i) {
  cfg = IA32_PERFEVTSELx(i);
  save = IA32_PMCx(i);
  wrIA32_PERFEVTSELx(i, cfg | IA32_PERFEVTSEL_PMI | IA32_PERFEVTSEL_EN);
  wrIA32_PMCx(i, save);
 }


 global &= ~target_mask;
 global |= state_mask;
 wrmsr64(MSR_IA32_PERF_GLOBAL_CTRL, global);

 ml_set_interrupts_enabled(enabled);
}
