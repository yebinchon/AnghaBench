
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct modctl {scalar_t__ mod_address; int mod_modname; struct modctl* mod_next; scalar_t__ mod_size; scalar_t__ mod_loaded; } ;
struct kmod_info {int dummy; } ;
struct TYPE_9__ {int (* dtps_destroy ) (int ,int,int ) ;} ;
struct TYPE_10__ {int dtpv_arg; TYPE_1__ dtpv_pops; int dtpv_probe_count; } ;
typedef TYPE_2__ dtrace_provider_t ;
struct TYPE_11__ {int dtpr_id; int dtpr_name; int dtpr_func; int dtpr_mod; int dtpr_arg; TYPE_2__* dtpr_provider; struct TYPE_11__* dtpr_nextmod; int * dtpr_ecb; } ;
typedef TYPE_3__ dtrace_probe_t ;


 int ASSERT (int) ;
 int CE_WARN ;
 int cmn_err (int ,char*,int ) ;
 int dtrace_arena ;
 int * dtrace_byfunc ;
 int * dtrace_bymod ;
 int * dtrace_byname ;
 int * dtrace_byprov ;
 scalar_t__ dtrace_err_verbose ;
 TYPE_3__* dtrace_hash_lookup (int *,TYPE_3__*) ;
 int dtrace_hash_remove (int *,TYPE_3__*) ;
 int dtrace_lock ;
 struct modctl* dtrace_modctl_list ;
 struct modctl* dtrace_modctl_lookup (struct kmod_info*) ;
 int dtrace_modctl_remove (struct modctl*) ;
 int dtrace_probe_t_zone ;
 TYPE_3__** dtrace_probes ;
 int dtrace_provider_lock ;
 int dtrace_strunref (int ) ;
 int dtrace_sync () ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int mod_lock ;
 int stub1 (int ,int,int ) ;
 int vmem_free (int ,void*,int) ;
 int zfree (int ,TYPE_3__*) ;

__attribute__((used)) static int
dtrace_module_unloaded(struct kmod_info *kmod)
{
 dtrace_probe_t template, *probe, *first, *next;
 dtrace_provider_t *prov;
        struct modctl *ctl = ((void*)0);
 struct modctl *syncctl = ((void*)0);
 struct modctl *nextsyncctl = ((void*)0);
 int syncmode = 0;

        lck_mtx_lock(&dtrace_provider_lock);
 lck_mtx_lock(&mod_lock);
 lck_mtx_lock(&dtrace_lock);

 if (kmod == ((void*)0)) {
     syncmode = 1;
 }
 else {
     ctl = dtrace_modctl_lookup(kmod);
     if (ctl == ((void*)0))
     {
  lck_mtx_unlock(&dtrace_lock);
  lck_mtx_unlock(&mod_lock);
  lck_mtx_unlock(&dtrace_provider_lock);
  return (-1);
     }
     ctl->mod_loaded = 0;
     ctl->mod_address = 0;
     ctl->mod_size = 0;
 }

 if (dtrace_bymod == ((void*)0)) {




          if (ctl != ((void*)0))
    (void)dtrace_modctl_remove(ctl);
   lck_mtx_unlock(&dtrace_lock);
   lck_mtx_unlock(&mod_lock);
   lck_mtx_unlock(&dtrace_provider_lock);
   return(0);
 }


        if (syncmode)
     nextsyncctl = dtrace_modctl_list;

syncloop:
 if (syncmode)
 {

     for (syncctl = nextsyncctl; syncctl != ((void*)0); syncctl=syncctl->mod_next) {
  if (syncctl->mod_address == 0)
      break;
     }
     if (syncctl==((void*)0))
     {

  lck_mtx_unlock(&dtrace_lock);
  lck_mtx_unlock(&mod_lock);
  lck_mtx_unlock(&dtrace_provider_lock);
  return(0);
     }
     else {

  nextsyncctl = syncctl->mod_next;
  ctl = syncctl;
     }
 }

 template.dtpr_mod = ctl->mod_modname;

 for (probe = first = dtrace_hash_lookup(dtrace_bymod, &template);
     probe != ((void*)0); probe = probe->dtpr_nextmod) {
         if (probe->dtpr_ecb != ((void*)0)) {
          if (syncmode) {

       goto syncloop;
   }

   lck_mtx_unlock(&dtrace_lock);
   lck_mtx_unlock(&mod_lock);
   lck_mtx_unlock(&dtrace_provider_lock);

   if (dtrace_err_verbose) {
    cmn_err(CE_WARN, "unloaded module '%s' had "
        "enabled probes", ctl->mod_modname);
   }
   return(-1);
  }
 }

 probe = first;

 for (first = ((void*)0); probe != ((void*)0); probe = next) {
  ASSERT(dtrace_probes[probe->dtpr_id - 1] == probe);

  dtrace_probes[probe->dtpr_id - 1] = ((void*)0);
  probe->dtpr_provider->dtpv_probe_count--;

  next = probe->dtpr_nextmod;
  dtrace_hash_remove(dtrace_byprov, probe);
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






 dtrace_sync();

 for (probe = first; probe != ((void*)0); probe = first) {
  first = probe->dtpr_nextmod;
  prov = probe->dtpr_provider;
  prov->dtpv_pops.dtps_destroy(prov->dtpv_arg, probe->dtpr_id,
      probe->dtpr_arg);
  dtrace_strunref(probe->dtpr_mod);
  dtrace_strunref(probe->dtpr_func);
  dtrace_strunref(probe->dtpr_name);
  vmem_free(dtrace_arena, (void *)(uintptr_t)probe->dtpr_id, 1);

  zfree(dtrace_probe_t_zone, probe);
 }

 dtrace_modctl_remove(ctl);

 if (syncmode)
     goto syncloop;

 lck_mtx_unlock(&dtrace_lock);
 lck_mtx_unlock(&mod_lock);
 lck_mtx_unlock(&dtrace_provider_lock);

 return(0);
}
