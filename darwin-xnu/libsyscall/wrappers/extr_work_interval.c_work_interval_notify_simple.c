
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int work_interval_t ;
typedef int uint64_t ;


 int mach_absolute_time () ;
 int work_interval_notify (int ,int ,int ,int ,int ,int ) ;

int
work_interval_notify_simple(work_interval_t interval_handle, uint64_t start,
                            uint64_t deadline, uint64_t next_start)
{
 return work_interval_notify(interval_handle, start, mach_absolute_time(),
                             deadline, next_start, 0);
}
