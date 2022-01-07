
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int PROC_POLICY_ACTION_ENABLE ;
 int PROC_POLICY_RESOURCE_USAGE ;
 int PROC_POLICY_RUSAGE_CPU ;
 int PROC_POLICY_SCOPE_PROCESS ;
 int __process_policy (int ,int ,int ,int ,int *,int ,int ) ;

int
proc_resume_cpumon(pid_t pid)
{
 return __process_policy(PROC_POLICY_SCOPE_PROCESS,
    PROC_POLICY_ACTION_ENABLE,
    PROC_POLICY_RESOURCE_USAGE,
    PROC_POLICY_RUSAGE_CPU,
    ((void*)0), pid, 0);
}
