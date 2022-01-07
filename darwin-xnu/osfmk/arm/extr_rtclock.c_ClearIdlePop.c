
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cpu_idle_pop; int rtcPop; } ;
typedef TYPE_1__ cpu_data_t ;
typedef scalar_t__ boolean_t ;


 TYPE_1__* getCpuDatap () ;
 scalar_t__ ml_get_timer_pending () ;
 int setPop (int ) ;

void
ClearIdlePop(
             boolean_t wfi)
{

#pragma unused(wfi)

 cpu_data_t * cdp;

 cdp = getCpuDatap();
 cdp->cpu_idle_pop = 0x0ULL;
 {
  setPop(cdp->rtcPop);
 }
}
