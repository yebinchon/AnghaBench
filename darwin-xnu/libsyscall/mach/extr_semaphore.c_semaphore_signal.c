
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_t ;
typedef int kern_return_t ;


 int semaphore_signal_trap (int ) ;

kern_return_t
semaphore_signal(mach_port_t signal_semaphore)
{
        return semaphore_signal_trap(signal_semaphore);
}
