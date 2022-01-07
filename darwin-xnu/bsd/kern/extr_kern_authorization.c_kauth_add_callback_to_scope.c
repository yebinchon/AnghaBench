
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* kauth_scope_t ;
typedef TYPE_3__* kauth_listener_t ;
struct TYPE_8__ {int kl_idata; int kl_callback; } ;
struct TYPE_7__ {int ks_flags; TYPE_1__* ks_listeners; } ;
struct TYPE_6__ {TYPE_3__* kll_listenerp; int kll_idata; int kll_callback; } ;


 int ENOSPC ;
 int KAUTH_SCOPE_MAX_LISTENERS ;
 int KS_F_HAS_LISTENERS ;

__attribute__((used)) static int kauth_add_callback_to_scope(kauth_scope_t sp, kauth_listener_t klp)
{
 int i;

 for (i = 0; i < KAUTH_SCOPE_MAX_LISTENERS; i++) {
  if (sp->ks_listeners[i].kll_listenerp == ((void*)0)) {
   sp->ks_listeners[i].kll_callback = klp->kl_callback;
   sp->ks_listeners[i].kll_idata = klp->kl_idata;
   sp->ks_listeners[i].kll_listenerp = klp;
   sp->ks_flags |= KS_F_HAS_LISTENERS;
   return(0);
  }
 }
 return(ENOSPC);
}
