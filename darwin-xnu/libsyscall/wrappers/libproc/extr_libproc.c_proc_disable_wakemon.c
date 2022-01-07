
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_rlimit_control_wakeupmon {int wm_rate; int wm_flags; } ;
typedef int pid_t ;


 int RLIMIT_WAKEUPS_MONITOR ;
 int WAKEMON_DISABLE ;
 int proc_rlimit_control (int ,int ,struct proc_rlimit_control_wakeupmon*) ;

int
proc_disable_wakemon(pid_t pid)
{
 struct proc_rlimit_control_wakeupmon params;

 params.wm_flags = WAKEMON_DISABLE;
 params.wm_rate = -1;

 return (proc_rlimit_control(pid, RLIMIT_WAKEUPS_MONITOR, &params));
}
