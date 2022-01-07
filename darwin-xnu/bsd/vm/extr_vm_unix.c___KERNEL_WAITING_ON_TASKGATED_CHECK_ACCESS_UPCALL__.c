
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int mach_port_t ;
typedef int int32_t ;


 int check_task_access (int ,int ,int ,int ) ;

__attribute__((noinline)) int __KERNEL_WAITING_ON_TASKGATED_CHECK_ACCESS_UPCALL__(
 mach_port_t task_access_port, int32_t calling_pid, uint32_t calling_gid, int32_t target_pid)
{
 return check_task_access(task_access_port, calling_pid, calling_gid, target_pid);
}
