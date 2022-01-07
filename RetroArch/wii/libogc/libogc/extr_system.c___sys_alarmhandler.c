
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ syswd_t ;
struct TYPE_2__ {scalar_t__ periodic; int alarm; int cb_arg; int (* alarmhandler ) (scalar_t__,int ) ;} ;
typedef TYPE_1__ alarm_st ;


 int LWP_OBJMASKID (scalar_t__) ;
 scalar_t__ LWP_OBJTYPE (scalar_t__) ;
 scalar_t__ LWP_OBJTYPE_SYSWD ;
 scalar_t__ SYS_WD_NULL ;
 scalar_t__ __lwp_objmgr_getnoprotection (int *,int ) ;
 int __lwp_thread_dispatchdisable () ;
 int __lwp_thread_dispatchunnest () ;
 int __lwp_wd_insert_ticks (int *,scalar_t__) ;
 int stub1 (scalar_t__,int ) ;
 int sys_alarm_objects ;

__attribute__((used)) static void __sys_alarmhandler(void *arg)
{
 alarm_st *alarm;
 syswd_t thealarm = (syswd_t)arg;

 if(thealarm==SYS_WD_NULL || LWP_OBJTYPE(thealarm)!=LWP_OBJTYPE_SYSWD) return;

 __lwp_thread_dispatchdisable();
 alarm = (alarm_st*)__lwp_objmgr_getnoprotection(&sys_alarm_objects,LWP_OBJMASKID(thealarm));
 if(alarm) {
  if(alarm->alarmhandler) alarm->alarmhandler(thealarm,alarm->cb_arg);
  if(alarm->periodic) __lwp_wd_insert_ticks(&alarm->alarm,alarm->periodic);
 }
 __lwp_thread_dispatchunnest();
}
