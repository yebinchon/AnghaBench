
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_t ;
typedef int mach_msg_timeout_t ;
typedef int kern_return_t ;


 int syscall_thread_switch (int ,int,int ) ;

kern_return_t
thread_switch(
 mach_port_t thread,
 int option,
 mach_msg_timeout_t option_time)
{
 kern_return_t result;

 result = syscall_thread_switch(thread, option, option_time);
 return result;
}
