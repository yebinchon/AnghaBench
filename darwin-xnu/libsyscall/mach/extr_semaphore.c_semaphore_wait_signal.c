
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_t ;
typedef int kern_return_t ;


 int semaphore_wait_signal_trap (int ,int ) ;

kern_return_t
semaphore_wait_signal(mach_port_t wait_semaphore, mach_port_t signal_semaphore)
{
        return semaphore_wait_signal_trap(wait_semaphore, signal_semaphore);
}
