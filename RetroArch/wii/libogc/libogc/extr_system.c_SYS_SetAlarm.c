
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ syswd_t ;
struct timespec {int dummy; } ;
typedef int s32 ;
typedef int alarmcallback ;
struct TYPE_4__ {int id; } ;
struct TYPE_5__ {int ticks; int alarm; TYPE_1__ object; scalar_t__ start_per; scalar_t__ periodic; int alarmhandler; void* cb_arg; } ;
typedef TYPE_2__ alarm_st ;


 TYPE_2__* __lwp_syswd_open (scalar_t__) ;
 int __lwp_thread_dispatchenable () ;
 int __lwp_wd_calc_ticks (struct timespec const*) ;
 int __lwp_wd_initialize (int *,int ,int ,void*) ;
 int __lwp_wd_insert_ticks (int *,int ) ;
 int __sys_alarmhandler ;

s32 SYS_SetAlarm(syswd_t thealarm,const struct timespec *tp,alarmcallback cb,void *cbarg)
{
 alarm_st *alarm;

 alarm = __lwp_syswd_open(thealarm);
 if(!alarm) return -1;

 alarm->cb_arg = cbarg;
 alarm->alarmhandler = cb;
 alarm->ticks = __lwp_wd_calc_ticks(tp);

 alarm->periodic = 0;
 alarm->start_per = 0;

 __lwp_wd_initialize(&alarm->alarm,__sys_alarmhandler,alarm->object.id,(void*)thealarm);
 __lwp_wd_insert_ticks(&alarm->alarm,alarm->ticks);
 __lwp_thread_dispatchenable();
 return 0;
}
