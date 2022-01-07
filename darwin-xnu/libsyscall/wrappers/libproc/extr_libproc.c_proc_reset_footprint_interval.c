
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 scalar_t__ FOOTPRINT_INTERVAL_RESET ;
 int RLIMIT_FOOTPRINT_INTERVAL ;
 int proc_rlimit_control (int ,int ,void*) ;

int
proc_reset_footprint_interval(pid_t pid)
{
 return (proc_rlimit_control(pid, RLIMIT_FOOTPRINT_INTERVAL, (void *)(uintptr_t)FOOTPRINT_INTERVAL_RESET));
}
