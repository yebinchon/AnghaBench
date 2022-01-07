
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int ppattr_cpu_attr; int ppattr_cpu_percentage; } ;
typedef TYPE_1__ proc_policy_cpuusage_attr_t ;
typedef int proc_policy_attribute_t ;
typedef int pid_t ;


 int PROC_POLICY_ACTION_APPLY ;
 int PROC_POLICY_RESOURCE_USAGE ;
 int PROC_POLICY_RUSAGE_CPU ;
 int PROC_POLICY_SCOPE_PROCESS ;
 int __process_policy (int ,int ,int ,int ,int *,int ,int ) ;
 int bzero (TYPE_1__*,int) ;
 int errno ;

int
proc_setcpu_percentage(pid_t pid, int action, int percentage)
{
 proc_policy_cpuusage_attr_t attr;

 bzero(&attr, sizeof(proc_policy_cpuusage_attr_t));
 attr.ppattr_cpu_attr = action;
 attr.ppattr_cpu_percentage = percentage;
 if (__process_policy(PROC_POLICY_SCOPE_PROCESS, PROC_POLICY_ACTION_APPLY, PROC_POLICY_RESOURCE_USAGE, PROC_POLICY_RUSAGE_CPU, (proc_policy_attribute_t*)&attr, pid, (uint64_t)0) != -1)
  return(0);
 else
  return(errno);
}
