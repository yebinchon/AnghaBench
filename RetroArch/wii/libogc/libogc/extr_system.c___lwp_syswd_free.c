
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int object; } ;
typedef TYPE_1__ alarm_st ;


 int __lwp_objmgr_close (int *,int *) ;
 int __lwp_objmgr_free (int *,int *) ;
 int sys_alarm_objects ;

__attribute__((used)) static __inline__ void __lwp_syswd_free(alarm_st *alarm)
{
 __lwp_objmgr_close(&sys_alarm_objects,&alarm->object);
 __lwp_objmgr_free(&sys_alarm_objects,&alarm->object);
}
