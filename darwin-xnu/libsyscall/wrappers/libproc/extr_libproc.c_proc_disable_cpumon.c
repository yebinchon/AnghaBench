
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ppattr_cpu_attr_deadline; scalar_t__ ppattr_cpu_attr_interval; int ppattr_cpu_percentage; int ppattr_cpu_attr; } ;
typedef TYPE_1__ proc_policy_cpuusage_attr_t ;
typedef int proc_policy_attribute_t ;
typedef int pid_t ;


 int PROC_POLICY_ACTION_SET ;
 int PROC_POLICY_CPUMON_DISABLE ;
 int PROC_POLICY_RESOURCE_USAGE ;
 int PROC_POLICY_RSRCACT_NOTIFY_EXC ;
 int PROC_POLICY_RUSAGE_CPU ;
 int PROC_POLICY_SCOPE_PROCESS ;
 int __process_policy (int ,int ,int ,int ,int *,int ,int ) ;

int
proc_disable_cpumon(pid_t pid)
{
 proc_policy_cpuusage_attr_t attr;

 attr.ppattr_cpu_attr = PROC_POLICY_RSRCACT_NOTIFY_EXC;
 attr.ppattr_cpu_percentage = PROC_POLICY_CPUMON_DISABLE;
 attr.ppattr_cpu_attr_interval = 0;
 attr.ppattr_cpu_attr_deadline = 0;

 return(__process_policy(PROC_POLICY_SCOPE_PROCESS, PROC_POLICY_ACTION_SET, PROC_POLICY_RESOURCE_USAGE,
  PROC_POLICY_RUSAGE_CPU, (proc_policy_attribute_t*)&attr, pid, 0));
}
