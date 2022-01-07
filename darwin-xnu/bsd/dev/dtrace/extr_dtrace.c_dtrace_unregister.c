
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_11__ ;


struct TYPE_16__ {int (* dtps_enable ) (void*,dtrace_id_t,void*) ;int (* dtps_destroy ) (int ,int,int ) ;} ;
struct TYPE_17__ {scalar_t__ dtpv_ecb_count; int dtpv_name; struct TYPE_17__* dtpv_next; int dtpv_arg; TYPE_2__ dtpv_pops; int dtpv_probe_count; int dtpv_defunct; } ;
typedef TYPE_3__ dtrace_provider_t ;
typedef scalar_t__ dtrace_provider_id_t ;
struct TYPE_18__ {int dtpr_id; int dtpr_name; int dtpr_func; int dtpr_mod; int dtpr_arg; struct TYPE_18__* dtpr_nextmod; TYPE_3__* dtpr_provider; } ;
typedef TYPE_4__ dtrace_probe_t ;
struct TYPE_15__ {scalar_t__ dts_necbs; } ;
struct TYPE_14__ {TYPE_1__* dta_state; } ;


 int ASSERT (int) ;
 TYPE_4__** DTRACE_HASHNEXT (int ,TYPE_4__*) ;
 int EBUSY ;
 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 TYPE_11__ dtrace_anon ;
 int dtrace_arena ;
 int dtrace_byfunc ;
 int dtrace_bymod ;
 int dtrace_byname ;
 int dtrace_byprov ;
 int * dtrace_devi ;
 scalar_t__ dtrace_enable_nullop ;
 TYPE_4__* dtrace_hash_lookup (int ,TYPE_4__*) ;
 int dtrace_hash_remove (int ,TYPE_4__*) ;
 int dtrace_lock ;
 scalar_t__ dtrace_opens ;
 int dtrace_probe_t_zone ;
 int ** dtrace_probes ;
 TYPE_3__* dtrace_provider ;
 int dtrace_provider_lock ;
 int dtrace_strunref (int ) ;
 int dtrace_sync () ;
 int kmem_free (TYPE_3__*,int) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int mod_lock ;
 int panic (char*,void*) ;
 int stub1 (int ,int,int ) ;
 int vmem_free (int ,void*,int) ;
 int zfree (int ,TYPE_4__*) ;

int
dtrace_unregister(dtrace_provider_id_t id)
{
 dtrace_provider_t *old = (dtrace_provider_t *)id;
 dtrace_provider_t *prev = ((void*)0);
 int self = 0;
 dtrace_probe_t *probe, *first = ((void*)0), *next = ((void*)0);
 dtrace_probe_t template = {
  .dtpr_provider = old
 };

 if (old->dtpv_pops.dtps_enable ==
     (int (*)(void *, dtrace_id_t, void *))dtrace_enable_nullop) {




  ASSERT(old == dtrace_provider);
  ASSERT(dtrace_devi != ((void*)0));
  LCK_MTX_ASSERT(&dtrace_provider_lock, LCK_MTX_ASSERT_OWNED);
  LCK_MTX_ASSERT(&dtrace_lock, LCK_MTX_ASSERT_OWNED);
  self = 1;

  if (dtrace_provider->dtpv_next != ((void*)0)) {



   return (EBUSY);
  }
 } else {
  lck_mtx_lock(&dtrace_provider_lock);
  lck_mtx_lock(&mod_lock);
  lck_mtx_lock(&dtrace_lock);
 }






 if (!old->dtpv_defunct &&
     (dtrace_opens || (dtrace_anon.dta_state != ((void*)0) &&
     dtrace_anon.dta_state->dts_necbs > 0))) {
  if (!self) {
   lck_mtx_unlock(&dtrace_lock);
   lck_mtx_unlock(&mod_lock);
   lck_mtx_unlock(&dtrace_provider_lock);
  }
  return (EBUSY);
 }




 if (old->dtpv_ecb_count!=0) {



  if (!self) {
   lck_mtx_unlock(&dtrace_lock);
   lck_mtx_unlock(&mod_lock);
   lck_mtx_unlock(&dtrace_provider_lock);
  }
  return (EBUSY);
 }





 for (probe = dtrace_hash_lookup(dtrace_byprov, &template); probe != ((void*)0);
     probe = *(DTRACE_HASHNEXT(dtrace_byprov, probe))) {
  if (probe->dtpr_provider != old)
   continue;

  dtrace_probes[probe->dtpr_id - 1] = ((void*)0);
  old->dtpv_probe_count--;

  dtrace_hash_remove(dtrace_bymod, probe);
  dtrace_hash_remove(dtrace_byfunc, probe);
  dtrace_hash_remove(dtrace_byname, probe);

  if (first == ((void*)0)) {
   first = probe;
   probe->dtpr_nextmod = ((void*)0);
  } else {



   probe->dtpr_nextmod = first;
   first = probe;
  }
 }

 for (probe = first; probe != ((void*)0); probe = next) {
  next = probe->dtpr_nextmod;
  dtrace_hash_remove(dtrace_byprov, probe);
 }






 dtrace_sync();

 for (probe = first; probe != ((void*)0); probe = next) {
  next = probe->dtpr_nextmod;

  old->dtpv_pops.dtps_destroy(old->dtpv_arg, probe->dtpr_id,
      probe->dtpr_arg);
  dtrace_strunref(probe->dtpr_mod);
  dtrace_strunref(probe->dtpr_func);
  dtrace_strunref(probe->dtpr_name);
  vmem_free(dtrace_arena, (void *)(uintptr_t)(probe->dtpr_id), 1);
  zfree(dtrace_probe_t_zone, probe);
 }

 if ((prev = dtrace_provider) == old) {
  ASSERT(self || dtrace_devi == ((void*)0));
  ASSERT(old->dtpv_next == ((void*)0) || dtrace_devi == ((void*)0));
  dtrace_provider = old->dtpv_next;
 } else {
  while (prev != ((void*)0) && prev->dtpv_next != old)
   prev = prev->dtpv_next;

  if (prev == ((void*)0)) {
   panic("attempt to unregister non-existent "
       "dtrace provider %p\n", (void *)id);
  }

  prev->dtpv_next = old->dtpv_next;
 }

 dtrace_strunref(old->dtpv_name);

 if (!self) {
  lck_mtx_unlock(&dtrace_lock);
  lck_mtx_unlock(&mod_lock);
  lck_mtx_unlock(&dtrace_provider_lock);
 }

 kmem_free(old, sizeof (dtrace_provider_t));

 return (0);
}
