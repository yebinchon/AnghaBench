
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_3__ {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
typedef TYPE_1__ mach_timespec_t ;
typedef int clock_serv_t ;


 int CALENDAR_CLOCK ;
 int CLOCK_MONOTONIC ;
 int clock_get_time (int ,TYPE_1__*) ;
 int clock_gettime (int ,struct timespec*) ;
 int host_get_clock_service (int ,int ,int *) ;
 int mach_host_self () ;
 int mach_port_deallocate (int ,int ) ;
 int mach_task_self () ;

uint64_t mz_os_ms_time(void)
{
    struct timespec ts;
    clock_gettime(CLOCK_MONOTONIC, &ts);


    return ((uint64_t)ts.tv_sec * 1000) + ((uint64_t)ts.tv_nsec / 1000000);
}
