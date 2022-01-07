
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int dtrace_toxrange_t ;
struct TYPE_4__ {scalar_t__ dts_necbs; } ;
typedef TYPE_1__ dtrace_state_t ;
typedef int dtrace_provider_id_t ;
typedef int dtrace_probe_t ;
typedef int dtrace_anon_t ;
typedef int dev_info_t ;
typedef int ddi_detach_cmd_t ;
typedef int cpu_setup_func_t ;


 int ASSERT (int) ;

 int DDI_FAILURE ;
 int DDI_SUCCESS ;

 int KDI_DTSET_DTRACE_DEACTIVATE ;
 int bzero (int *,int) ;
 int cpu_lock ;
 int ddi_remove_minor_node (int *,int *) ;
 int ddi_soft_state_fini (int *) ;
 int dtrace_anon ;
 TYPE_1__* dtrace_anon_grab () ;
 int dtrace_arena ;
 int * dtrace_byfunc ;
 int * dtrace_bymod ;
 int * dtrace_byname ;
 int * dtrace_byprov ;
 int * dtrace_cpu_init ;
 scalar_t__ dtrace_cpu_setup ;
 int * dtrace_cpustart_fini ;
 int * dtrace_cpustart_init ;
 int * dtrace_debugger_fini ;
 int * dtrace_debugger_init ;
 int * dtrace_devi ;
 int dtrace_hash_destroy (int *) ;
 scalar_t__ dtrace_helpers ;
 int * dtrace_helpers_cleanup ;
 int * dtrace_helpers_fork ;
 int * dtrace_helptrace_buffer ;
 int dtrace_helptrace_bufsize ;
 scalar_t__ dtrace_helptrace_enabled ;
 int * dtrace_kreloc_fini ;
 int * dtrace_kreloc_init ;
 int dtrace_lock ;
 int * dtrace_modload ;
 int * dtrace_modunload ;
 int dtrace_nprobes ;
 scalar_t__ dtrace_opens ;
 int * dtrace_probes ;
 int * dtrace_provider ;
 int dtrace_provider_lock ;
 int * dtrace_retained ;
 int dtrace_softstate ;
 int dtrace_state_cache ;
 int dtrace_state_destroy (TYPE_1__*) ;
 int * dtrace_strings ;
 int * dtrace_taskq ;
 int * dtrace_toxrange ;
 scalar_t__ dtrace_toxranges ;
 int dtrace_toxranges_max ;
 scalar_t__ dtrace_unregister (int ) ;
 scalar_t__ dtrace_vtime_references ;
 int kdi_dtrace_set (int ) ;
 int kmem_cache_destroy (int ) ;
 int kmem_free (int *,int) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int taskq_destroy (int *) ;
 int unregister_cpu_setup_func (int *,int *) ;
 int vmem_destroy (int ) ;

__attribute__((used)) static int
dtrace_detach(dev_info_t *dip, ddi_detach_cmd_t cmd)
{
 dtrace_state_t *state;

 switch (cmd) {
 case 129:
  break;

 case 128:
  return (DDI_SUCCESS);

 default:
  return (DDI_FAILURE);
 }

 lck_mtx_lock(&cpu_lock);
 lck_mtx_lock(&dtrace_provider_lock);
 lck_mtx_lock(&dtrace_lock);

 ASSERT(dtrace_opens == 0);

 if (dtrace_helpers > 0) {
  lck_mtx_unlock(&dtrace_lock);
  lck_mtx_unlock(&dtrace_provider_lock);
  lck_mtx_unlock(&cpu_lock);
  return (DDI_FAILURE);
 }

 if (dtrace_unregister((dtrace_provider_id_t)dtrace_provider) != 0) {
  lck_mtx_unlock(&dtrace_lock);
  lck_mtx_unlock(&dtrace_provider_lock);
  lck_mtx_unlock(&cpu_lock);
  return (DDI_FAILURE);
 }

 dtrace_provider = ((void*)0);

 if ((state = dtrace_anon_grab()) != ((void*)0)) {





  ASSERT(state->dts_necbs == 0);
  dtrace_state_destroy(state);





  (void) kdi_dtrace_set(KDI_DTSET_DTRACE_DEACTIVATE);
 }

 bzero(&dtrace_anon, sizeof (dtrace_anon_t));
 unregister_cpu_setup_func((cpu_setup_func_t *)dtrace_cpu_setup, ((void*)0));
 dtrace_cpu_init = ((void*)0);
 dtrace_helpers_cleanup = ((void*)0);
 dtrace_helpers_fork = ((void*)0);
 dtrace_cpustart_init = ((void*)0);
 dtrace_cpustart_fini = ((void*)0);
 dtrace_debugger_init = ((void*)0);
 dtrace_debugger_fini = ((void*)0);
 dtrace_kreloc_init = ((void*)0);
 dtrace_kreloc_fini = ((void*)0);
 dtrace_modload = ((void*)0);
 dtrace_modunload = ((void*)0);

 lck_mtx_unlock(&cpu_lock);

 if (dtrace_helptrace_enabled) {
  kmem_free(dtrace_helptrace_buffer, dtrace_helptrace_bufsize);
  dtrace_helptrace_buffer = ((void*)0);
 }

 kmem_free(dtrace_probes, dtrace_nprobes * sizeof (dtrace_probe_t *));
 dtrace_probes = ((void*)0);
 dtrace_nprobes = 0;

 dtrace_hash_destroy(dtrace_strings);
 dtrace_hash_destroy(dtrace_byprov);
 dtrace_hash_destroy(dtrace_bymod);
 dtrace_hash_destroy(dtrace_byfunc);
 dtrace_hash_destroy(dtrace_byname);
 dtrace_strings = ((void*)0);
 dtrace_byprov = ((void*)0);
 dtrace_bymod = ((void*)0);
 dtrace_byfunc = ((void*)0);
 dtrace_byname = ((void*)0);

 kmem_cache_destroy(dtrace_state_cache);
 vmem_destroy(dtrace_arena);

 if (dtrace_toxrange != ((void*)0)) {
  kmem_free(dtrace_toxrange,
      dtrace_toxranges_max * sizeof (dtrace_toxrange_t));
  dtrace_toxrange = ((void*)0);
  dtrace_toxranges = 0;
  dtrace_toxranges_max = 0;
 }

 ddi_remove_minor_node(dtrace_devi, ((void*)0));
 dtrace_devi = ((void*)0);

 ddi_soft_state_fini(&dtrace_softstate);

 ASSERT(dtrace_vtime_references == 0);
 ASSERT(dtrace_opens == 0);
 ASSERT(dtrace_retained == ((void*)0));

 lck_mtx_unlock(&dtrace_lock);
 lck_mtx_unlock(&dtrace_provider_lock);
 return (DDI_SUCCESS);
}
