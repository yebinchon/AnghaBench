
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rtcDeadline; } ;


 int EndOfAllTime ;
 int timer_resync_deadlines () ;
 TYPE_1__* x86_lcpu () ;

void
rtc_timer_start(void)
{



 x86_lcpu()->rtcDeadline = EndOfAllTime;
 timer_resync_deadlines();
}
