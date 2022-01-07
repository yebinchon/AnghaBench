
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int (* dtps_enable ) (void*,dtrace_id_t,void*) ;int (* dtps_destroy ) (int ,int,int ) ;} ;
struct TYPE_11__ {int dtpv_arg; TYPE_1__ dtpv_pops; int dtpv_probe_count; } ;
typedef TYPE_2__ dtrace_provider_t ;
typedef scalar_t__ dtrace_provider_id_t ;
struct TYPE_12__ {int dtpr_id; struct TYPE_12__* dtpr_nextmod; int dtpr_name; int dtpr_func; int dtpr_mod; int dtpr_arg; int * dtpr_ecb; TYPE_2__* dtpr_provider; } ;
typedef TYPE_3__ dtrace_probe_t ;


 int ASSERT (int) ;
 TYPE_3__** DTRACE_HASHNEXT (int ,TYPE_3__*) ;
 int dtrace_arena ;
 int dtrace_byfunc ;
 int dtrace_bymod ;
 int dtrace_byname ;
 int dtrace_byprov ;
 scalar_t__ dtrace_enable_nullop ;
 TYPE_3__* dtrace_hash_lookup (int ,TYPE_3__*) ;
 int dtrace_hash_remove (int ,TYPE_3__*) ;
 int dtrace_lock ;
 int dtrace_probe_t_zone ;
 int ** dtrace_probes ;
 int dtrace_provider_lock ;
 int dtrace_strunref (int ) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int stub1 (int ,int,int ) ;
 int vmem_free (int ,void*,int) ;
 int zfree (int ,TYPE_3__*) ;

int
dtrace_condense(dtrace_provider_id_t id)
{
 dtrace_provider_t *prov = (dtrace_provider_t *)id;
 dtrace_probe_t *probe, *first = ((void*)0);
 dtrace_probe_t template = {
  .dtpr_provider = prov
 };




 ASSERT(prov->dtpv_pops.dtps_enable !=
   (int (*)(void *, dtrace_id_t, void *))dtrace_enable_nullop);

 lck_mtx_lock(&dtrace_provider_lock);
 lck_mtx_lock(&dtrace_lock);




 for (probe = dtrace_hash_lookup(dtrace_byprov, &template); probe != ((void*)0);
     probe = *(DTRACE_HASHNEXT(dtrace_byprov, probe))) {

  if (probe->dtpr_provider != prov)
   continue;

  if (probe->dtpr_ecb != ((void*)0))
   continue;

  dtrace_probes[probe->dtpr_id - 1] = ((void*)0);
  prov->dtpv_probe_count--;

  dtrace_hash_remove(dtrace_bymod, probe);
  dtrace_hash_remove(dtrace_byfunc, probe);
  dtrace_hash_remove(dtrace_byname, probe);

  prov->dtpv_pops.dtps_destroy(prov->dtpv_arg, probe->dtpr_id,
      probe->dtpr_arg);
  dtrace_strunref(probe->dtpr_mod);
  dtrace_strunref(probe->dtpr_func);
  dtrace_strunref(probe->dtpr_name);
  if (first == ((void*)0)) {
   first = probe;
   probe->dtpr_nextmod = ((void*)0);
  } else {



   probe->dtpr_nextmod = first;
   first = probe;
  }
 }

 for (probe = first; probe != ((void*)0); probe = first) {
  first = probe->dtpr_nextmod;
  dtrace_hash_remove(dtrace_byprov, probe);
  vmem_free(dtrace_arena, (void *)((uintptr_t)probe->dtpr_id), 1);
  zfree(dtrace_probe_t_zone, probe);
 }

 lck_mtx_unlock(&dtrace_lock);
 lck_mtx_unlock(&dtrace_provider_lock);

 return (0);
}
