
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int syswd_t ;
typedef int alarm_st ;


 int LWP_CHECK_SYSWD (int ) ;
 int LWP_OBJMASKID (int ) ;
 scalar_t__ __lwp_objmgr_get (int *,int ) ;
 int sys_alarm_objects ;

__attribute__((used)) static __inline__ alarm_st* __lwp_syswd_open(syswd_t wd)
{
 LWP_CHECK_SYSWD(wd);
 return (alarm_st*)__lwp_objmgr_get(&sys_alarm_objects,LWP_OBJMASKID(wd));
}
