
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef TYPE_1__* processor_t ;
struct TYPE_3__ {int last_dispatch; } ;


 TYPE_1__* current_processor () ;
 int disable_preemption () ;
 int enable_preemption () ;
 int ml_get_timebase () ;

uint64_t
mach_approximate_time(void)
{




 processor_t processor;
 uint64_t approx_time;

 disable_preemption();
 processor = current_processor();
 approx_time = processor->last_dispatch;
 enable_preemption();

 return approx_time;

}
