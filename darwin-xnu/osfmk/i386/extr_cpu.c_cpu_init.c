
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int deadline; int queue; } ;
struct TYPE_5__ {int cpu_subtype; int cpu_type; TYPE_1__ rtclock_timer; } ;
typedef TYPE_2__ cpu_data_t ;


 int EndOfAllTime ;
 int cpuid_cpusubtype () ;
 int cpuid_cputype () ;
 TYPE_2__* current_cpu_datap () ;
 int i386_activate_cpu () ;
 int timer_call_queue_init (int *) ;

void
cpu_init(void)
{
 cpu_data_t *cdp = current_cpu_datap();

 timer_call_queue_init(&cdp->rtclock_timer.queue);
 cdp->rtclock_timer.deadline = EndOfAllTime;

 cdp->cpu_type = cpuid_cputype();
 cdp->cpu_subtype = cpuid_cpusubtype();

 i386_activate_cpu();
}
