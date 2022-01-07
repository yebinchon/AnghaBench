
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* kauth_scope_t ;
typedef int kauth_cred_t ;
typedef int kauth_action_t ;
struct TYPE_5__ {int (* ks_callback ) (int ,int ,int ,uintptr_t,uintptr_t,uintptr_t,uintptr_t) ;int ks_flags; TYPE_1__* ks_listeners; int ks_idata; } ;
struct TYPE_4__ {int (* kll_callback ) (int ,int ,int ,uintptr_t,uintptr_t,uintptr_t,uintptr_t) ;int kll_idata; int * kll_listenerp; } ;


 int EPERM ;
 int KAUTH_RESULT_ALLOW ;
 int KAUTH_RESULT_DEFER ;
 int KAUTH_RESULT_DENY ;
 int KAUTH_SCOPE_MAX_LISTENERS ;
 int KS_F_HAS_LISTENERS ;
 int stub1 (int ,int ,int ,uintptr_t,uintptr_t,uintptr_t,uintptr_t) ;
 int stub2 (int ,int ,int ,uintptr_t,uintptr_t,uintptr_t,uintptr_t) ;

int
kauth_authorize_action(kauth_scope_t scope, kauth_cred_t credential, kauth_action_t action,
    uintptr_t arg0, uintptr_t arg1, uintptr_t arg2, uintptr_t arg3)
{
 int result, ret, i;


 if (scope->ks_callback != ((void*)0))
  result = scope->ks_callback(credential, scope->ks_idata, action, arg0, arg1, arg2, arg3);
 else
  result = KAUTH_RESULT_DEFER;


 if ((scope->ks_flags & KS_F_HAS_LISTENERS) != 0) {
  for (i = 0; i < KAUTH_SCOPE_MAX_LISTENERS; i++) {






   if (scope->ks_listeners[i].kll_listenerp == ((void*)0) ||
    scope->ks_listeners[i].kll_callback == ((void*)0))
    continue;

   ret = scope->ks_listeners[i].kll_callback(
     credential, scope->ks_listeners[i].kll_idata,
     action, arg0, arg1, arg2, arg3);
   if ((ret == KAUTH_RESULT_DENY) ||
    (result == KAUTH_RESULT_DEFER))
    result = ret;
  }
 }



  return(result == KAUTH_RESULT_ALLOW ? 0 : EPERM);
}
