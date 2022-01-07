
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cpu_monotonic; } ;
typedef TYPE_1__ cpu_data_t ;


 scalar_t__ FALSE ;
 int GLOBAL_CTRL ;
 int assert (int) ;
 scalar_t__ ml_get_interrupts_enabled () ;
 int mt_core_supported ;
 int mt_mtc_update_fixed_counts (int *,int *,int *) ;
 int wrmsr64 (int ,int ) ;

__attribute__((used)) static void
core_down(cpu_data_t *cpu)
{
 if (!mt_core_supported) {
  return;
 }

 assert(ml_get_interrupts_enabled() == FALSE);

 wrmsr64(GLOBAL_CTRL, 0);
 mt_mtc_update_fixed_counts(&cpu->cpu_monotonic, ((void*)0), ((void*)0));
}
