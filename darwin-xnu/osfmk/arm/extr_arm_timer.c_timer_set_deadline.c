
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int spl_t ;
struct TYPE_4__ {int deadline; } ;
typedef TYPE_1__ rtclock_timer_t ;
struct TYPE_5__ {TYPE_1__ rtclock_timer; } ;
typedef TYPE_2__ cpu_data_t ;


 TYPE_2__* getCpuDatap () ;
 int splclock () ;
 int splx (int ) ;
 int timer_resync_deadlines () ;

void
timer_set_deadline(uint64_t deadline)
{
 rtclock_timer_t *mytimer;
 spl_t s;
 cpu_data_t *cpu_data_ptr;

 s = splclock();
 cpu_data_ptr = getCpuDatap();

 mytimer = &cpu_data_ptr->rtclock_timer;
 mytimer->deadline = deadline;

 timer_resync_deadlines();

 splx(s);
}
