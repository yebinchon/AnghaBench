
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tv_nsec; int tv_sec; } ;
typedef TYPE_1__ mach_timespec_t ;
typedef int mach_port_t ;
typedef int kern_return_t ;


 int semaphore_timedwait_trap (int ,int ,int ) ;

kern_return_t
semaphore_timedwait(mach_port_t wait_semaphore, mach_timespec_t wait_time)
{
        return semaphore_timedwait_trap(wait_semaphore,
                                        wait_time.tv_sec,
                                        wait_time.tv_nsec);
}
