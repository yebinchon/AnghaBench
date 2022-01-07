
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ target_cpu; } ;


 scalar_t__ TSC_sync_margin ;
 int atomic_decl (scalar_t__*,int) ;
 scalar_t__ cpu_number () ;
 scalar_t__ rdtsc64 () ;
 TYPE_1__ start_info ;
 scalar_t__ tsc_entry_barrier ;
 scalar_t__ tsc_exit_barrier ;
 scalar_t__ tsc_target ;

__attribute__((used)) static void
started_cpu(void)
{


 if (TSC_sync_margin &&
     start_info.target_cpu == cpu_number()) {




  tsc_target = 0;
  atomic_decl(&tsc_entry_barrier, 1);
  while (tsc_entry_barrier != 0)
   ;
  tsc_target = rdtsc64();
  atomic_decl(&tsc_exit_barrier, 1);
 }
}
