
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 scalar_t__ CPUMON_MAKE_FATAL ;
 int EBUSY ;
 int EINVAL ;
 int RLIMIT_CPU_USAGE_MONITOR ;
 int errno ;
 int proc_disable_cpumon (int ) ;
 int proc_get_cpumon_params (int ,int*,int*) ;
 int proc_rlimit_control (int ,int ,void*) ;
 int proc_set_cpumon_params (int ,int,int) ;

int
proc_set_cpumon_params_fatal(pid_t pid, int percentage, int interval)
{
 int current_percentage = 0;
 int current_interval = 0;
 int ret = 0;

 if ((percentage <= 0) || (interval <= 0)) {
  errno = EINVAL;
  return (-1);
 }
 (void)proc_get_cpumon_params(pid, &current_percentage, &current_interval);
 if (current_percentage || current_interval)
 {




  errno = EBUSY;
  return (-1);
 }

 if ((ret = proc_set_cpumon_params(pid, percentage, interval)) != 0) {

  return (ret);
 }

 if ((ret = proc_rlimit_control(pid, RLIMIT_CPU_USAGE_MONITOR, (void *)(uintptr_t)CPUMON_MAKE_FATAL)) != 0) {

  (void)proc_disable_cpumon(pid);
 }

 return (ret);
}
