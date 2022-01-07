
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_t ;


 int mach_task_self () ;

mach_port_t
task_self_(void) {
 return mach_task_self();
}
