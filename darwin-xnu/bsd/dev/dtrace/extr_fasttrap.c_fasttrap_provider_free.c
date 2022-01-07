
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_9__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int p_dtrace_probes; } ;
typedef TYPE_1__ proc_t ;
typedef int pid_t ;
struct TYPE_11__ {scalar_t__ ftp_rcount; scalar_t__ ftp_ccount; scalar_t__ ftp_mcount; int ftp_cmtx; int ftp_mtx; TYPE_9__* ftp_proc; int ftp_retired; int ftp_pid; } ;
typedef TYPE_2__ fasttrap_provider_t ;
struct TYPE_12__ {scalar_t__ ftpc_acount; scalar_t__ ftpc_rcount; } ;


 int ASSERT (int) ;
 int atomic_add_64 (scalar_t__*,int) ;
 int fasttrap_lck_grp ;
 int fasttrap_proc_release (TYPE_9__*) ;
 int kmem_free (TYPE_2__*,int) ;
 int lck_mtx_destroy (int *,int ) ;
 TYPE_1__* proc_find (int ) ;
 int proc_lock (TYPE_1__*) ;
 int proc_rele (TYPE_1__*) ;
 int proc_unlock (TYPE_1__*) ;

__attribute__((used)) static void
fasttrap_provider_free(fasttrap_provider_t *provider)
{
 pid_t pid = provider->ftp_pid;
 proc_t *p;





 ASSERT(provider->ftp_rcount == 0);
 ASSERT(provider->ftp_ccount == 0);
 ASSERT(provider->ftp_mcount == 0);





 if (!provider->ftp_retired) {
  atomic_add_64(&provider->ftp_proc->ftpc_acount, -1);
  ASSERT(provider->ftp_proc->ftpc_acount <
  provider->ftp_proc->ftpc_rcount);
 }

 fasttrap_proc_release(provider->ftp_proc);





 lck_mtx_destroy(&provider->ftp_mtx, fasttrap_lck_grp);
 lck_mtx_destroy(&provider->ftp_cmtx, fasttrap_lck_grp);

 kmem_free(provider, sizeof (fasttrap_provider_t));
 if ((p = proc_find(pid)) == ((void*)0)) {
  return;
 }

 proc_lock(p);
 p->p_dtrace_probes--;
 proc_unlock(p);

 proc_rele(p);
}
