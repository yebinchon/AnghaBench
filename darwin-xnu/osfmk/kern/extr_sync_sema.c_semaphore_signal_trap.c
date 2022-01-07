
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct semaphore_signal_trap_args {int signal_name; } ;
typedef int mach_port_name_t ;
typedef int kern_return_t ;


 int semaphore_signal_internal_trap (int ) ;

kern_return_t
semaphore_signal_trap(
 struct semaphore_signal_trap_args *args)
{
 mach_port_name_t sema_name = args->signal_name;

 return (semaphore_signal_internal_trap(sema_name));
}
