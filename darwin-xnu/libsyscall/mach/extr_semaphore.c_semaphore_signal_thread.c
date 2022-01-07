
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_t ;
typedef int kern_return_t ;


 int semaphore_signal_thread_trap (int ,int ) ;

kern_return_t
semaphore_signal_thread(mach_port_t signal_semaphore, mach_port_t thread_act)
{
        return semaphore_signal_thread_trap(signal_semaphore, thread_act);
}
