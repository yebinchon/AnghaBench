
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ task_t ;
typedef int pid_t ;
typedef int mach_port_name_t ;


 int MACH_PORT_VALID (int ) ;
 scalar_t__ TASK_NULL ;
 scalar_t__ port_name_to_task (int ) ;
 int task_deallocate_internal (scalar_t__) ;
 int task_pid (scalar_t__) ;

int
kperf_port_to_pid(mach_port_name_t portname)
{
 if (!MACH_PORT_VALID(portname)) {
  return -1;
 }

 task_t task = port_name_to_task(portname);
 if (task == TASK_NULL) {
  return -1;
 }
 pid_t pid = task_pid(task);

 task_deallocate_internal(task);

 return pid;
}
