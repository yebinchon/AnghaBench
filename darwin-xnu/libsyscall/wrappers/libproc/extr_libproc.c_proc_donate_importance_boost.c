
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int PROC_POLICY_ACTION_ENABLE ;
 int PROC_POLICY_ACTION_SET ;
 int PROC_POLICY_APPTYPE ;
 int PROC_POLICY_BOOST ;
 int PROC_POLICY_IMP_DONATION ;
 int PROC_POLICY_IOS_DONATEIMP ;
 int PROC_POLICY_SCOPE_PROCESS ;
 int __process_policy (int ,int ,int ,int ,int *,int ,int ) ;
 int errno ;
 int getpid () ;

int
proc_donate_importance_boost()
{
 int rval;
 rval = __process_policy(PROC_POLICY_SCOPE_PROCESS,
       PROC_POLICY_ACTION_SET,
       PROC_POLICY_BOOST,
       PROC_POLICY_IMP_DONATION,
       ((void*)0), getpid(), 0);


 if (rval == 0)
  return (0);
 else
  return (errno);
}
