
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int pid_t ;


 int EINVAL ;
 int PROC_POLICY_ACTION_ENABLE ;
 int PROC_POLICY_APPTYPE ;


 int PROC_POLICY_SCOPE_PROCESS ;
 int __process_policy (int ,int ,int ,int,int *,int ,int ) ;
 int errno ;

int
proc_enable_apptype(pid_t pid, int apptype)
{
 switch (apptype) {
  case 128:
  case 129:
   break;
  default:
   return(EINVAL);

 }

 if (__process_policy(PROC_POLICY_SCOPE_PROCESS, PROC_POLICY_ACTION_ENABLE, PROC_POLICY_APPTYPE, apptype, ((void*)0), pid, (uint64_t)0) != -1)
  return(0);
 else
  return(errno);

}
