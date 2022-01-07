
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int dummy; } ;
typedef int kauth_cred_t ;
typedef int kauth_action_t ;


 int kauth_authorize_action (int ,int ,int ,uintptr_t,uintptr_t,uintptr_t,uintptr_t) ;
 int kauth_scope_process ;

int
kauth_authorize_process(kauth_cred_t credential, kauth_action_t action, struct proc *process, uintptr_t arg1, uintptr_t arg2, uintptr_t arg3)
{
 return(kauth_authorize_action(kauth_scope_process, credential, action, (uintptr_t)process, arg1, arg2, arg3));
}
