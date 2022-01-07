
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_t ;


 int task_self_trap () ;

mach_port_t
mach_task_self(void)
{
 return task_self_trap();
}
