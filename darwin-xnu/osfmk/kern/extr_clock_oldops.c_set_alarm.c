
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int tv_nsec; int tv_sec; } ;
typedef TYPE_1__ mach_timespec_t ;


 int FALSE ;
 int TIMER_CALL_USER_NORMAL ;
 int alarm_expire_timer ;
 int nanotime_to_absolutetime (int ,int ,int *) ;
 int timer_call_enter_with_leeway (int *,int *,int ,int ,int ,int ) ;

__attribute__((used)) static void
set_alarm(
 mach_timespec_t *alarm_time)
{
 uint64_t abstime;

 nanotime_to_absolutetime(alarm_time->tv_sec, alarm_time->tv_nsec, &abstime);
 timer_call_enter_with_leeway(&alarm_expire_timer, ((void*)0), abstime, 0, TIMER_CALL_USER_NORMAL, FALSE);
}
