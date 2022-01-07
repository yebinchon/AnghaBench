
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int dtpv_probe_count; } ;
typedef TYPE_1__ dtrace_provider_t ;
typedef scalar_t__ dtrace_provider_id_t ;
struct TYPE_13__ {int dtpr_id; int dtpr_aframes; TYPE_1__* dtpr_provider; void* dtpr_arg; void* dtpr_name; void* dtpr_func; void* dtpr_mod; scalar_t__ dtpr_gen; } ;
typedef TYPE_2__ dtrace_probe_t ;
typedef int dtrace_id_t ;


 int ASSERT (int) ;
 int KM_SLEEP ;
 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int VM_BESTFIT ;
 int VM_SLEEP ;
 int bcopy (TYPE_2__**,TYPE_2__**,size_t) ;
 int bzero (TYPE_2__*,int) ;
 int dtrace_arena ;
 int dtrace_byfunc ;
 int dtrace_bymod ;
 int dtrace_byname ;
 int dtrace_byprov ;
 int dtrace_hash_add (int ,TYPE_2__*) ;
 int dtrace_lock ;
 int dtrace_membar_producer () ;
 int dtrace_nprobes ;
 int dtrace_probe_t_zone ;
 int dtrace_probegen ;
 TYPE_2__** dtrace_probes ;
 TYPE_1__* dtrace_provider ;
 void* dtrace_strref (char const*) ;
 int dtrace_sync () ;
 int kmem_free (TYPE_2__**,size_t) ;
 TYPE_2__** kmem_zalloc (size_t,int ) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 scalar_t__ vmem_alloc (int ,int,int) ;
 TYPE_2__* zalloc (int ) ;

dtrace_id_t
dtrace_probe_create(dtrace_provider_id_t prov, const char *mod,
    const char *func, const char *name, int aframes, void *arg)
{
 dtrace_probe_t *probe, **probes;
 dtrace_provider_t *provider = (dtrace_provider_t *)prov;
 dtrace_id_t id;

 if (provider == dtrace_provider) {
  LCK_MTX_ASSERT(&dtrace_lock, LCK_MTX_ASSERT_OWNED);
 } else {
  lck_mtx_lock(&dtrace_lock);
 }

 id = (dtrace_id_t)(uintptr_t)vmem_alloc(dtrace_arena, 1,
     VM_BESTFIT | VM_SLEEP);

 probe = zalloc(dtrace_probe_t_zone);
 bzero(probe, sizeof (dtrace_probe_t));

 probe->dtpr_id = id;
 probe->dtpr_gen = dtrace_probegen++;
 probe->dtpr_mod = dtrace_strref(mod);
 probe->dtpr_func = dtrace_strref(func);
 probe->dtpr_name = dtrace_strref(name);
 probe->dtpr_arg = arg;
 probe->dtpr_aframes = aframes;
 probe->dtpr_provider = provider;

 dtrace_hash_add(dtrace_byprov, probe);
 dtrace_hash_add(dtrace_bymod, probe);
 dtrace_hash_add(dtrace_byfunc, probe);
 dtrace_hash_add(dtrace_byname, probe);

 if (id - 1 >= (dtrace_id_t)dtrace_nprobes) {
  size_t osize = dtrace_nprobes * sizeof (dtrace_probe_t *);
  size_t nsize = osize << 1;

  if (nsize == 0) {
   ASSERT(osize == 0);
   ASSERT(dtrace_probes == ((void*)0));
   nsize = sizeof (dtrace_probe_t *);
  }

  probes = kmem_zalloc(nsize, KM_SLEEP);

  if (dtrace_probes == ((void*)0)) {
   ASSERT(osize == 0);
   dtrace_probes = probes;
   dtrace_nprobes = 1;
  } else {
   dtrace_probe_t **oprobes = dtrace_probes;

   bcopy(oprobes, probes, osize);
   dtrace_membar_producer();
   dtrace_probes = probes;

   dtrace_sync();





   kmem_free(oprobes, osize);
   dtrace_nprobes <<= 1;
  }

  ASSERT(id - 1 < (dtrace_id_t)dtrace_nprobes);
 }

 ASSERT(dtrace_probes[id - 1] == ((void*)0));
 dtrace_probes[id - 1] = probe;
 provider->dtpv_probe_count++;

 if (provider != dtrace_provider)
  lck_mtx_unlock(&dtrace_lock);

 return (id);
}
