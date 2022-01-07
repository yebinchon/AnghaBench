
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ mach_port_t ;


 int EINVAL ;
 scalar_t__ MACH_PORT_NULL ;
 int WORK_INTERVAL_OPERATION_JOIN ;
 int __work_interval_ctl (int ,int ,int *,int ) ;
 int errno ;

int
work_interval_join_port(mach_port_t port)
{
 if (port == MACH_PORT_NULL) {
  errno = EINVAL;
  return -1;
 }

 return __work_interval_ctl(WORK_INTERVAL_OPERATION_JOIN,
                            (uint64_t)port, ((void*)0), 0);
}
