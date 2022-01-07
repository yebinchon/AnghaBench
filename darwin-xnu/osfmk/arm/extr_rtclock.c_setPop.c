
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct TYPE_3__ {scalar_t__ rtcPop; } ;
typedef TYPE_1__ cpu_data_t ;


 int deadline_to_decrementer (scalar_t__,scalar_t__) ;
 TYPE_1__* getCpuDatap () ;
 scalar_t__ mach_absolute_time () ;
 int ml_set_decrementer (int ) ;

int
setPop(uint64_t time)
{
 int delay_time;
 uint64_t current_time;
 cpu_data_t * cdp;

 cdp = getCpuDatap();
 current_time = mach_absolute_time();

 delay_time = deadline_to_decrementer(time, current_time);
 cdp->rtcPop = delay_time + current_time;

 ml_set_decrementer((uint32_t) delay_time);

 return (delay_time);
}
