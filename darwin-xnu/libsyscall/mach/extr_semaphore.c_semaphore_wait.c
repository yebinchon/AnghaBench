
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_t ;
typedef int kern_return_t ;


 int semaphore_wait_trap (int ) ;

kern_return_t
semaphore_wait(mach_port_t wait_semaphore)
{
        return semaphore_wait_trap(wait_semaphore);
}
