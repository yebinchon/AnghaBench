
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int syswd_t ;
typedef int s32 ;
struct TYPE_4__ {int id; } ;
struct TYPE_5__ {TYPE_1__ object; scalar_t__ periodic; scalar_t__ start_per; scalar_t__ ticks; int * alarmhandler; } ;
typedef TYPE_2__ alarm_st ;


 int LWP_OBJMASKID (int ) ;
 int LWP_OBJMASKTYPE (int ) ;
 int LWP_OBJTYPE_SYSWD ;
 TYPE_2__* __lwp_syswd_allocate () ;
 int __lwp_thread_dispatchenable () ;

s32 SYS_CreateAlarm(syswd_t *thealarm)
{
 alarm_st *alarm;

 alarm = __lwp_syswd_allocate();
 if(!alarm) return -1;

 alarm->alarmhandler = ((void*)0);
 alarm->ticks = 0;
 alarm->start_per = 0;
 alarm->periodic = 0;

 *thealarm = (LWP_OBJMASKTYPE(LWP_OBJTYPE_SYSWD)|LWP_OBJMASKID(alarm->object.id));
 __lwp_thread_dispatchenable();
 return 0;
}
