
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {scalar_t__ cpu_idle_latency; } ;
typedef TYPE_1__ cpu_data_t ;
typedef int boolean_t ;


 int FALSE ;
 int TRUE ;
 TYPE_1__* getCpuDatap () ;

boolean_t
ml_delay_should_spin(uint64_t interval)
{
 cpu_data_t *cdp = getCpuDatap();

 if (cdp->cpu_idle_latency) {
  return (interval < cdp->cpu_idle_latency) ? TRUE : FALSE;
 } else {




  return FALSE;
 }
}
