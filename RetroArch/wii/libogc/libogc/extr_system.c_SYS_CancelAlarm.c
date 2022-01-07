
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int syswd_t ;
typedef int s32 ;
struct TYPE_3__ {int alarm; scalar_t__ start_per; scalar_t__ periodic; scalar_t__ ticks; int * alarmhandler; } ;
typedef TYPE_1__ alarm_st ;


 TYPE_1__* __lwp_syswd_open (int ) ;
 int __lwp_thread_dispatchenable () ;
 int __lwp_wd_remove_ticks (int *) ;

s32 SYS_CancelAlarm(syswd_t thealarm)
{
 alarm_st *alarm;

 alarm = __lwp_syswd_open(thealarm);
 if(!alarm) return -1;

 alarm->alarmhandler = ((void*)0);
 alarm->ticks = 0;
 alarm->periodic = 0;
 alarm->start_per = 0;

 __lwp_wd_remove_ticks(&alarm->alarm);
 __lwp_thread_dispatchenable();
 return 0;
}
