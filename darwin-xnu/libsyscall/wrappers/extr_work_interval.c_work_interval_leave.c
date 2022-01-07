
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 scalar_t__ MACH_PORT_NULL ;
 int WORK_INTERVAL_OPERATION_JOIN ;
 int __work_interval_ctl (int ,int ,int *,int ) ;

int
work_interval_leave(void)
{
 return __work_interval_ctl(WORK_INTERVAL_OPERATION_JOIN,
                            (uint64_t)MACH_PORT_NULL, ((void*)0), 0);
}
