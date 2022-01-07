
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_2__ {scalar_t__ cpu_base_timebase; } ;


 TYPE_1__* getCpuDatap () ;
 scalar_t__ ml_get_hwclock () ;

uint64_t
ml_get_timebase()
{
 return (ml_get_hwclock() + getCpuDatap()->cpu_base_timebase);
}
