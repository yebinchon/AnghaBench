
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_t ;


 int thread_self_trap () ;

mach_port_t
mach_thread_self(void)
{
 return thread_self_trap();
}
