
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int cpu_int_event_time; } ;


 TYPE_1__* current_cpu_datap () ;

uint64_t ml_cpu_int_event_time(void)
{
 return current_cpu_datap()->cpu_int_event_time;
}
