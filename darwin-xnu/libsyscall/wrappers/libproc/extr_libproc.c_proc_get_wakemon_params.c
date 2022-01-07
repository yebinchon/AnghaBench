
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_rlimit_control_wakeupmon {int wm_flags; int wm_rate; } ;
typedef int pid_t ;


 int RLIMIT_WAKEUPS_MONITOR ;
 int WAKEMON_GET_PARAMS ;
 int proc_rlimit_control (int ,int ,struct proc_rlimit_control_wakeupmon*) ;

int
proc_get_wakemon_params(pid_t pid, int *rate_hz, int *flags)
{
 struct proc_rlimit_control_wakeupmon params;
 int error;

 params.wm_flags = WAKEMON_GET_PARAMS;

 if ((error = proc_rlimit_control(pid, RLIMIT_WAKEUPS_MONITOR, &params)) != 0) {
  return (error);
 }

 *rate_hz = params.wm_rate;
 *flags = params.wm_flags;

 return (0);
}
