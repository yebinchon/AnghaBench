
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int dtrace_state_t ;
typedef scalar_t__ dtrace_provider_id_t ;
typedef int dtrace_enabling_t ;
typedef int dtrace_dstate_percpu_t ;
typedef int dev_info_t ;
typedef int cpu_setup_func_t ;
struct TYPE_2__ {int dta_beganon; int * dta_enabling; int * dta_state; } ;


 int ASSERT (int) ;
 int CE_WARN ;
 int DDI_SUCCESS ;
 scalar_t__ DTRACE_KERNEL_SYMBOLS_FROM_KERNEL ;
 scalar_t__ DTRACE_KERNEL_SYMBOLS_FROM_USERSPACE ;
 int DTRACE_PRIV_NONE ;
 int DTRACE_STATE_ALIGN ;
 int KM_SLEEP ;
 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 scalar_t__ NCPU ;
 int UINT32_MAX ;
 int VMC_IDENTIFIER ;
 int VM_SLEEP ;
 int cmn_err (int ,char*,int) ;
 int cpu_lock ;
 int dtpr_func ;
 int dtpr_mod ;
 int dtpr_name ;
 int dtpr_nextfunc ;
 int dtpr_nextmod ;
 int dtpr_nextname ;
 int dtpr_nextprov ;
 int dtpr_prevfunc ;
 int dtpr_prevmod ;
 int dtpr_prevname ;
 int dtpr_prevprov ;
 TYPE_1__ dtrace_anon ;
 int dtrace_anon_property () ;
 int dtrace_arena ;
 void* dtrace_byfunc ;
 void* dtrace_bymod ;
 void* dtrace_byname ;
 void* dtrace_byprov ;
 int dtrace_cpu_init ;
 scalar_t__ dtrace_cpu_setup ;
 int dtrace_cpu_setup_initial ;
 void* dtrace_cpustart_fini ;
 void* dtrace_cpustart_init ;
 void* dtrace_debugger_fini ;
 void* dtrace_debugger_init ;
 int * dtrace_devi ;
 int dtrace_enabling_match (int *,int *,int *) ;
 int dtrace_enabling_provide (int *) ;
 void* dtrace_hash_create (int ,int ,int ,int ) ;
 int dtrace_helpers_cleanup ;
 int dtrace_helpers_destroy ;
 int dtrace_helpers_duplicate ;
 int dtrace_helpers_fork ;
 int * dtrace_helptrace_buffer ;
 int dtrace_helptrace_bufsize ;
 scalar_t__ dtrace_helptrace_enabled ;
 scalar_t__ dtrace_helptrace_next ;
 scalar_t__ dtrace_kernel_symbol_mode ;
 int dtrace_lock ;
 int dtrace_modload ;
 int dtrace_module_loaded ;
 int dtrace_module_unloaded ;
 int dtrace_modunload ;
 void* dtrace_probe_create (scalar_t__,int *,int *,char*,int,int *) ;
 int dtrace_probe_t ;
 void* dtrace_probeid_begin ;
 void* dtrace_probeid_end ;
 void* dtrace_probeid_error ;
 int * dtrace_provider ;
 int dtrace_provider_attr ;
 int dtrace_provider_lock ;
 int dtrace_provider_ops ;
 int dtrace_register (char*,int *,int ,int ,int *,int *,scalar_t__*) ;
 void* dtrace_resume ;
 int dtrace_retain_max ;
 int * dtrace_retained ;
 int dtrace_state_cache ;
 int dtrace_state_go (int *,int *) ;
 int dtrace_strkey_deref_offset ;
 int dtrace_strkey_probe_provider ;
 void* dtrace_suspend ;
 int dtrace_toxic_ranges (int ) ;
 int dtrace_toxrange_add ;
 int kmem_cache_create (char*,int,int ,int *,int *,int *,int *,int *,int ) ;
 int * kmem_zalloc (int ,int ) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int offsetof (int ,int ) ;
 int register_cpu_setup_func (int *,int *) ;
 int vmem_create (char*,void*,int ,int,int *,int *,int *,int ,int) ;

__attribute__((used)) static int
dtrace_attach(dev_info_t *devi)
{
 dtrace_provider_id_t id;
 dtrace_state_t *state = ((void*)0);
 dtrace_enabling_t *enab;

 lck_mtx_lock(&cpu_lock);
 lck_mtx_lock(&dtrace_provider_lock);
 lck_mtx_lock(&dtrace_lock);


 dtrace_devi = devi;

 dtrace_modload = dtrace_module_loaded;
 dtrace_modunload = dtrace_module_unloaded;
 dtrace_cpu_init = dtrace_cpu_setup_initial;
 dtrace_helpers_cleanup = dtrace_helpers_destroy;
 dtrace_helpers_fork = dtrace_helpers_duplicate;
 dtrace_cpustart_init = dtrace_suspend;
 dtrace_cpustart_fini = dtrace_resume;
 dtrace_debugger_init = dtrace_suspend;
 dtrace_debugger_fini = dtrace_resume;

 register_cpu_setup_func((cpu_setup_func_t *)dtrace_cpu_setup, ((void*)0));

 LCK_MTX_ASSERT(&cpu_lock, LCK_MTX_ASSERT_OWNED);

 dtrace_arena = vmem_create("dtrace", (void *)1, UINT32_MAX, 1,
     ((void*)0), ((void*)0), ((void*)0), 0, VM_SLEEP | VMC_IDENTIFIER);

 dtrace_state_cache = kmem_cache_create("dtrace_state_cache",
     sizeof (dtrace_dstate_percpu_t) * (int)NCPU, DTRACE_STATE_ALIGN,
     ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), 0);

 LCK_MTX_ASSERT(&cpu_lock, LCK_MTX_ASSERT_OWNED);

 dtrace_byprov = dtrace_hash_create(dtrace_strkey_probe_provider,
     0,
     offsetof(dtrace_probe_t, dtpr_nextprov),
     offsetof(dtrace_probe_t, dtpr_prevprov));

 dtrace_bymod = dtrace_hash_create(dtrace_strkey_deref_offset,
     offsetof(dtrace_probe_t, dtpr_mod),
     offsetof(dtrace_probe_t, dtpr_nextmod),
     offsetof(dtrace_probe_t, dtpr_prevmod));

 dtrace_byfunc = dtrace_hash_create(dtrace_strkey_deref_offset,
     offsetof(dtrace_probe_t, dtpr_func),
     offsetof(dtrace_probe_t, dtpr_nextfunc),
     offsetof(dtrace_probe_t, dtpr_prevfunc));

 dtrace_byname = dtrace_hash_create(dtrace_strkey_deref_offset,
     offsetof(dtrace_probe_t, dtpr_name),
     offsetof(dtrace_probe_t, dtpr_nextname),
     offsetof(dtrace_probe_t, dtpr_prevname));

 if (dtrace_retain_max < 1) {
  cmn_err(CE_WARN, "illegal value (%lu) for dtrace_retain_max; "
      "setting to 1", dtrace_retain_max);
  dtrace_retain_max = 1;
 }




 dtrace_toxic_ranges(dtrace_toxrange_add);
 (void) dtrace_register("dtrace", &dtrace_provider_attr,
     DTRACE_PRIV_NONE, 0, &dtrace_provider_ops, ((void*)0), &id);

 ASSERT(dtrace_provider != ((void*)0));
 ASSERT((dtrace_provider_id_t)dtrace_provider == id);


 dtrace_probeid_begin = dtrace_probe_create((dtrace_provider_id_t)
     dtrace_provider, ((void*)0), ((void*)0), "BEGIN", 1, ((void*)0));
 dtrace_probeid_end = dtrace_probe_create((dtrace_provider_id_t)
     dtrace_provider, ((void*)0), ((void*)0), "END", 0, ((void*)0));
 dtrace_probeid_error = dtrace_probe_create((dtrace_provider_id_t)
     dtrace_provider, ((void*)0), ((void*)0), "ERROR", 3, ((void*)0));
 dtrace_anon_property();
 lck_mtx_unlock(&cpu_lock);





 if (dtrace_helptrace_enabled) {
  ASSERT(dtrace_helptrace_buffer == ((void*)0));
  dtrace_helptrace_buffer =
      kmem_zalloc(dtrace_helptrace_bufsize, KM_SLEEP);
  dtrace_helptrace_next = 0;
 }
 if (dtrace_anon.dta_enabling != ((void*)0)) {
  ASSERT(dtrace_retained == dtrace_anon.dta_enabling);




  if (dtrace_kernel_symbol_mode == DTRACE_KERNEL_SYMBOLS_FROM_USERSPACE) {
   dtrace_kernel_symbol_mode = DTRACE_KERNEL_SYMBOLS_FROM_KERNEL;
  }

  dtrace_enabling_provide(((void*)0));
  state = dtrace_anon.dta_state;
  lck_mtx_unlock(&dtrace_lock);
  lck_mtx_unlock(&dtrace_provider_lock);

  lck_mtx_lock(&cpu_lock);
  lck_mtx_lock(&dtrace_provider_lock);
  lck_mtx_lock(&dtrace_lock);

  if ((enab = dtrace_anon.dta_enabling) != ((void*)0))
   (void) dtrace_enabling_match(enab, ((void*)0), ((void*)0));

  lck_mtx_unlock(&cpu_lock);
 }

 lck_mtx_unlock(&dtrace_lock);
 lck_mtx_unlock(&dtrace_provider_lock);

 if (state != ((void*)0)) {



  (void) dtrace_state_go(state, &dtrace_anon.dta_beganon);
 }

 return (DDI_SUCCESS);
}
