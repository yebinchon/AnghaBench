
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 int EIO ;
 scalar_t__ EOVERFLOW ;
 int PROC_POLICY_ACTION_DROP ;
 int PROC_POLICY_BOOST ;
 int PROC_POLICY_IMP_IMPORTANT ;
 int PROC_POLICY_SCOPE_PROCESS ;
 int __process_policy (int ,int ,int ,int ,int *,int ,int ) ;
 scalar_t__ errno ;
 int getpid () ;
 int important_boost_assertion_token ;
 int proc_importance_bad_assertion (char*) ;

int
proc_importance_assertion_complete(uint64_t assertion_token)
{
 int rval = 0;

 if (assertion_token == 0)
  return (0);

 if (assertion_token == (uint64_t) &important_boost_assertion_token) {
  rval = __process_policy(PROC_POLICY_SCOPE_PROCESS,
        PROC_POLICY_ACTION_DROP,
        PROC_POLICY_BOOST,
        PROC_POLICY_IMP_IMPORTANT,
        ((void*)0), getpid(), 0);
  if (rval == 0) {
   return (0);
  } else if (errno == EOVERFLOW) {
   proc_importance_bad_assertion("Attempted to drop too many assertions");
   return (errno);
  } else {
   return (errno);
  }
 } else {
  proc_importance_bad_assertion("Attempted to drop assertion with invalid token");
  return (EIO);
 }
}
