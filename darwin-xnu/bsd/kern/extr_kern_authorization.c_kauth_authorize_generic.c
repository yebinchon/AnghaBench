
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * kauth_cred_t ;
typedef int kauth_action_t ;


 int kauth_authorize_action (int ,int *,int ,int ,int ,int ,int ) ;
 int kauth_scope_generic ;
 int panic (char*) ;

int
kauth_authorize_generic(kauth_cred_t credential, kauth_action_t action)
{
 if (credential == ((void*)0))
  panic("auth against NULL credential");

 return(kauth_authorize_action(kauth_scope_generic, credential, action, 0, 0, 0, 0));

}
