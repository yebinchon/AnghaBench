
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* kauth_scope_t ;
struct TYPE_7__ {TYPE_1__* ks_listeners; } ;
struct TYPE_6__ {int * kll_listenerp; } ;


 int FREE (TYPE_2__*,int ) ;
 int KAUTH_SCOPELOCK () ;
 int KAUTH_SCOPEUNLOCK () ;
 int KAUTH_SCOPE_MAX_LISTENERS ;
 int M_KAUTH ;
 int TAILQ_INSERT_TAIL (int *,int *,int ) ;
 int TAILQ_REMOVE (int *,TYPE_2__*,int ) ;
 int kauth_dangling_listeners ;
 int kauth_scopes ;
 int kl_link ;
 int ks_link ;

void
kauth_deregister_scope(kauth_scope_t scope)
{
 int i;

 KAUTH_SCOPELOCK();

 TAILQ_REMOVE(&kauth_scopes, scope, ks_link);


 for (i = 0; i < KAUTH_SCOPE_MAX_LISTENERS; i++) {
  if (scope->ks_listeners[i].kll_listenerp != ((void*)0)) {
   TAILQ_INSERT_TAIL(&kauth_dangling_listeners, scope->ks_listeners[i].kll_listenerp, kl_link);
   scope->ks_listeners[i].kll_listenerp = ((void*)0);




  }
 }
 KAUTH_SCOPEUNLOCK();
 FREE(scope, M_KAUTH);

 return;
}
