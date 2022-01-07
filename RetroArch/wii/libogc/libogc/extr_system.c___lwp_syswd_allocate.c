
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int object; } ;
typedef TYPE_1__ alarm_st ;


 scalar_t__ __lwp_objmgr_allocate (int *) ;
 int __lwp_objmgr_open (int *,int *) ;
 int __lwp_thread_dispatchdisable () ;
 int __lwp_thread_dispatchenable () ;
 int sys_alarm_objects ;

__attribute__((used)) static alarm_st* __lwp_syswd_allocate()
{
 alarm_st *alarm;

 __lwp_thread_dispatchdisable();
 alarm = (alarm_st*)__lwp_objmgr_allocate(&sys_alarm_objects);
 if(alarm) {
  __lwp_objmgr_open(&sys_alarm_objects,&alarm->object);
  return alarm;
 }
 __lwp_thread_dispatchenable();
 return ((void*)0);
}
