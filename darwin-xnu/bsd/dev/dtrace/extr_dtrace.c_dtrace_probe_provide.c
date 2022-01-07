
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct modctl {struct modctl* mod_next; } ;
struct TYPE_5__ {int (* dtps_provide_module ) (int ,struct modctl*) ;int (* dtps_provide ) (int ,int *) ;} ;
struct TYPE_6__ {int dtpv_arg; TYPE_1__ dtpv_pops; struct TYPE_6__* dtpv_next; } ;
typedef TYPE_2__ dtrace_provider_t ;
typedef int dtrace_probedesc_t ;


 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 struct modctl* dtrace_modctl_list ;
 TYPE_2__* dtrace_provider ;
 int dtrace_provider_lock ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int mod_lock ;
 int stub1 (int ,int *) ;
 int stub2 (int ,struct modctl*) ;

__attribute__((used)) static void
dtrace_probe_provide(dtrace_probedesc_t *desc, dtrace_provider_t *prv)
{
 struct modctl *ctl;
 int all = 0;

 LCK_MTX_ASSERT(&dtrace_provider_lock, LCK_MTX_ASSERT_OWNED);

 if (prv == ((void*)0)) {
  all = 1;
  prv = dtrace_provider;
 }

 do {



  prv->dtpv_pops.dtps_provide(prv->dtpv_arg, desc);







  lck_mtx_lock(&mod_lock);

  ctl = dtrace_modctl_list;
  while (ctl) {
   prv->dtpv_pops.dtps_provide_module(prv->dtpv_arg, ctl);
   ctl = ctl->mod_next;
  }

  lck_mtx_unlock(&mod_lock);
 } while (all && (prv = prv->dtpv_next) != ((void*)0));
}
