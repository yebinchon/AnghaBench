
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t uint_t ;
struct TYPE_9__ {int p_pid; } ;
typedef TYPE_2__ proc_t ;
struct TYPE_10__ {int dthps_deferred; size_t dthps_nprovs; TYPE_1__** dthps_provs; struct TYPE_10__* dthps_prev; struct TYPE_10__* dthps_next; int dthps_pid; } ;
typedef TYPE_3__ dtrace_helpers_t ;
typedef int dof_helper_t ;
struct TYPE_8__ {int dthp_prov; } ;


 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_NOTOWNED ;
 int LCK_MTX_ASSERT_OWNED ;
 int dtrace_attached () ;
 TYPE_3__* dtrace_deferred_pid ;
 int dtrace_helper_provide (int *,TYPE_2__*) ;
 int dtrace_lock ;
 int dtrace_meta_lock ;
 int * dtrace_meta_pid ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;

__attribute__((used)) static void
dtrace_helper_provider_register(proc_t *p, dtrace_helpers_t *help,
    dof_helper_t *dofhp)
{
 LCK_MTX_ASSERT(&dtrace_meta_lock, LCK_MTX_ASSERT_OWNED);
 LCK_MTX_ASSERT(&dtrace_lock, LCK_MTX_ASSERT_NOTOWNED);

 lck_mtx_lock(&dtrace_lock);

 if (!dtrace_attached() || dtrace_meta_pid == ((void*)0)) {







  if (help->dthps_next == ((void*)0) && help->dthps_prev == ((void*)0) &&
      dtrace_deferred_pid != help) {
   help->dthps_deferred = 1;
   help->dthps_pid = p->p_pid;
   help->dthps_next = dtrace_deferred_pid;
   help->dthps_prev = ((void*)0);
   if (dtrace_deferred_pid != ((void*)0))
    dtrace_deferred_pid->dthps_prev = help;
   dtrace_deferred_pid = help;
  }

  lck_mtx_unlock(&dtrace_lock);

 } else if (dofhp != ((void*)0)) {






  lck_mtx_unlock(&dtrace_lock);

  dtrace_helper_provide(dofhp, p);

 } else {





  uint_t i;
  lck_mtx_unlock(&dtrace_lock);

  for (i = 0; i < help->dthps_nprovs; i++) {
   dtrace_helper_provide(&help->dthps_provs[i]->dthp_prov,
    p);
  }
 }
}
