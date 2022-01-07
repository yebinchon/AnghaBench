
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int pid_t ;


 int PROC_POLICY_ACTION_RESTORE ;
 int PROC_POLICY_RESOURCE_USAGE ;
 int PROC_POLICY_RUSAGE_CPU ;
 int PROC_POLICY_SCOPE_PROCESS ;
 int __process_policy (int ,int ,int ,int ,int *,int ,int ) ;
 int errno ;

int
proc_clear_cpulimits(pid_t pid)
{
 if (__process_policy(PROC_POLICY_SCOPE_PROCESS, PROC_POLICY_ACTION_RESTORE, PROC_POLICY_RESOURCE_USAGE, PROC_POLICY_RUSAGE_CPU, ((void*)0), pid, (uint64_t)0) != -1)
  return(0);
 else
  return(errno);
}
