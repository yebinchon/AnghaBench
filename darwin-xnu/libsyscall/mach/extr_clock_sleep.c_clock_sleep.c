
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sleep_type_t ;
struct TYPE_5__ {int tv_nsec; int tv_sec; } ;
typedef TYPE_1__ mach_timespec_t ;
typedef int mach_port_t ;
typedef int kern_return_t ;


 int clock_sleep_trap (int ,int ,int ,int ,TYPE_1__*) ;

kern_return_t
clock_sleep(mach_port_t clock_name,
 sleep_type_t clock_type,
 mach_timespec_t sleep_time,
 mach_timespec_t *wake_time)
{
    return clock_sleep_trap(clock_name, clock_type, sleep_time.tv_sec, sleep_time.tv_nsec, wake_time);
}
