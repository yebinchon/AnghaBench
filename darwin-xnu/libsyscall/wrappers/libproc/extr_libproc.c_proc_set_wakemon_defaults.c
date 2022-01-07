
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_rlimit_control_wakeupmon {int wm_flags; int wm_rate; } ;
typedef int pid_t ;


 int RLIMIT_WAKEUPS_MONITOR ;
 int WAKEMON_ENABLE ;
 int WAKEMON_SET_DEFAULTS ;
 int proc_rlimit_control (int ,int ,struct proc_rlimit_control_wakeupmon*) ;

int
proc_set_wakemon_defaults(pid_t pid)
{
 struct proc_rlimit_control_wakeupmon params;

 params.wm_flags = WAKEMON_ENABLE | WAKEMON_SET_DEFAULTS;
 params.wm_rate = -1;

 return (proc_rlimit_control(pid, RLIMIT_WAKEUPS_MONITOR, &params));
}
