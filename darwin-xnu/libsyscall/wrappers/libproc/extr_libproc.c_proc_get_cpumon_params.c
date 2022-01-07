
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ppattr_cpu_attr; int ppattr_cpu_percentage; scalar_t__ ppattr_cpu_attr_interval; } ;
typedef TYPE_1__ proc_policy_cpuusage_attr_t ;
typedef int proc_policy_attribute_t ;
typedef int pid_t ;


 int PROC_POLICY_ACTION_GET ;
 int PROC_POLICY_RESOURCE_USAGE ;
 scalar_t__ PROC_POLICY_RSRCACT_NOTIFY_EXC ;
 int PROC_POLICY_RUSAGE_CPU ;
 int PROC_POLICY_SCOPE_PROCESS ;
 int __process_policy (int ,int ,int ,int ,int *,int ,int ) ;

int
proc_get_cpumon_params(pid_t pid, int *percentage, int *interval)
{
 proc_policy_cpuusage_attr_t attr;
 int ret;

 ret = __process_policy(PROC_POLICY_SCOPE_PROCESS, PROC_POLICY_ACTION_GET, PROC_POLICY_RESOURCE_USAGE,
  PROC_POLICY_RUSAGE_CPU, (proc_policy_attribute_t*)&attr, pid, 0);

 if ((ret == 0) && (attr.ppattr_cpu_attr == PROC_POLICY_RSRCACT_NOTIFY_EXC)) {
  *percentage = attr.ppattr_cpu_percentage;
  *interval = (int)attr.ppattr_cpu_attr_interval;
 } else {
  *percentage = 0;
  *interval = 0;
 }

 return (ret);
}
