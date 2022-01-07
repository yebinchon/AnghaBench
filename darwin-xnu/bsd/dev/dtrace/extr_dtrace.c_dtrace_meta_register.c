
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t uint_t ;
typedef int proc_t ;
struct TYPE_11__ {int * dtms_remove_proc; int * dtms_provide_proc; int * dtms_create_probe; } ;
typedef TYPE_2__ dtrace_mops_t ;
struct TYPE_12__ {int dtm_name; void* dtm_arg; TYPE_2__ dtm_mops; } ;
typedef TYPE_3__ dtrace_meta_t ;
typedef scalar_t__ dtrace_meta_provider_id_t ;
struct TYPE_13__ {size_t dthps_nprovs; scalar_t__ dthps_deferred; int * dthps_prev; struct TYPE_13__* dthps_next; TYPE_1__** dthps_provs; int dthps_pid; } ;
typedef TYPE_4__ dtrace_helpers_t ;
struct TYPE_10__ {int dthp_prov; } ;


 int CE_WARN ;
 scalar_t__ DTRACE_METAPROVNONE ;
 int EINVAL ;
 int KM_SLEEP ;
 int * PROC_NULL ;
 int cmn_err (int ,char*,...) ;
 TYPE_4__* dtrace_deferred_pid ;
 int dtrace_helper_provide (int *,int *) ;
 int dtrace_lock ;
 int dtrace_meta_lock ;
 TYPE_3__* dtrace_meta_pid ;
 int dtrace_strref (char const*) ;
 int kmem_free (TYPE_3__*,int) ;
 TYPE_3__* kmem_zalloc (int,int ) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int * proc_find (int ) ;
 int proc_rele (int *) ;

int
dtrace_meta_register(const char *name, const dtrace_mops_t *mops, void *arg,
    dtrace_meta_provider_id_t *idp)
{
 dtrace_meta_t *meta;
 dtrace_helpers_t *help, *next;
 uint_t i;

 *idp = DTRACE_METAPROVNONE;





 if (name == ((void*)0)) {
  cmn_err(CE_WARN, "failed to register meta-provider: "
      "invalid name");
  return (EINVAL);
 }

 if (mops == ((void*)0) ||
     mops->dtms_create_probe == ((void*)0) ||
     mops->dtms_provide_proc == ((void*)0) ||
     mops->dtms_remove_proc == ((void*)0)) {
  cmn_err(CE_WARN, "failed to register meta-register %s: "
      "invalid ops", name);
  return (EINVAL);
 }

 meta = kmem_zalloc(sizeof (dtrace_meta_t), KM_SLEEP);
 meta->dtm_mops = *mops;
 meta->dtm_arg = arg;

 lck_mtx_lock(&dtrace_meta_lock);
 lck_mtx_lock(&dtrace_lock);

 if (dtrace_meta_pid != ((void*)0)) {
  lck_mtx_unlock(&dtrace_lock);
  lck_mtx_unlock(&dtrace_meta_lock);
  cmn_err(CE_WARN, "failed to register meta-register %s: "
      "user-land meta-provider exists", name);
  kmem_free(meta, sizeof (dtrace_meta_t));
  return (EINVAL);
 }

 meta->dtm_name = dtrace_strref(name);

 dtrace_meta_pid = meta;
 *idp = (dtrace_meta_provider_id_t)meta;






 help = dtrace_deferred_pid;
 dtrace_deferred_pid = ((void*)0);

 lck_mtx_unlock(&dtrace_lock);

 while (help != ((void*)0)) {
  for (i = 0; i < help->dthps_nprovs; i++) {
   proc_t *p = proc_find(help->dthps_pid);
   if (p == PROC_NULL)
    continue;
   dtrace_helper_provide(&help->dthps_provs[i]->dthp_prov,
       p);
   proc_rele(p);
  }

  next = help->dthps_next;
  help->dthps_next = ((void*)0);
  help->dthps_prev = ((void*)0);
  help->dthps_deferred = 0;
  help = next;
 }

 lck_mtx_unlock(&dtrace_meta_lock);

 return (0);
}
