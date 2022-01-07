
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int proc_t ;
struct TYPE_4__ {scalar_t__ ftp_rcount; int ftp_marked; int ftp_mtx; scalar_t__ ftp_retired; } ;
typedef TYPE_1__ fasttrap_provider_t ;
struct TYPE_5__ {scalar_t__ ftp_id; scalar_t__ ftp_enabled; scalar_t__ ftp_ntps; int ftp_pid; TYPE_1__* ftp_prov; } ;
typedef TYPE_2__ fasttrap_probe_t ;
typedef scalar_t__ dtrace_id_t ;


 int ASSERT (int) ;
 int FASTTRAP_CLEANUP_PROVIDER ;
 int * PROC_NULL ;
 int fasttrap_disable_callbacks () ;
 int fasttrap_pid_cleanup (int ) ;
 int fasttrap_tracepoint_disable (int *,TYPE_2__*,int) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int proc_lock (int *) ;
 int proc_unlock (int *) ;
 int * sprlock (int ) ;
 int sprunlock (int *) ;

__attribute__((used)) static void
fasttrap_pid_disable(void *arg, dtrace_id_t id, void *parg)
{
#pragma unused(arg, id)
 fasttrap_probe_t *probe = parg;
 fasttrap_provider_t *provider = probe->ftp_prov;
 proc_t *p;
 int i, whack = 0;

 ASSERT(id == probe->ftp_id);







 if ((p = sprlock(probe->ftp_pid)) != PROC_NULL) {

  proc_unlock(p);
 }

 lck_mtx_lock(&provider->ftp_mtx);




 if (probe->ftp_enabled) {
  for (i = 0; i < (int)probe->ftp_ntps; i++) {
   fasttrap_tracepoint_disable(p, probe, i);
  }
 }

 ASSERT(provider->ftp_rcount > 0);
 provider->ftp_rcount--;

 if (p != ((void*)0)) {





  if (provider->ftp_retired && !provider->ftp_marked)
   whack = provider->ftp_marked = 1;
  lck_mtx_unlock(&provider->ftp_mtx);

  proc_lock(p);
  sprunlock(p);
 } else {




  if (provider->ftp_rcount == 0 && !provider->ftp_marked)
   whack = provider->ftp_marked = 1;
  lck_mtx_unlock(&provider->ftp_mtx);
 }

 if (whack) {
  fasttrap_pid_cleanup(FASTTRAP_CLEANUP_PROVIDER);
 }

 if (!probe->ftp_enabled)
  return;

 probe->ftp_enabled = 0;


 fasttrap_disable_callbacks();
}
