
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_21__ {int p_csflags; int * p_dtrace_ptss_pages; } ;
typedef TYPE_3__ proc_t ;
struct TYPE_22__ {int ftp_enabled; scalar_t__ ftp_id; scalar_t__ ftp_ntps; int ftp_pid; TYPE_1__* ftp_prov; } ;
typedef TYPE_4__ fasttrap_probe_t ;
struct TYPE_20__ {int * dcr_cred; } ;
struct TYPE_23__ {TYPE_2__ dts_cred; } ;
typedef TYPE_5__ dtrace_state_t ;
typedef scalar_t__ dtrace_id_t ;
struct TYPE_19__ {scalar_t__ ftp_retired; int ftp_mtx; int ftp_rcount; } ;


 int ASSERT (int) ;
 int CE_WARN ;
 int CS_HARD ;
 int CS_KILL ;
 int DTRACE_NCLIENTS ;
 int FASTTRAP_ENABLE_FAIL ;
 int FASTTRAP_ENABLE_PARTIAL ;
 TYPE_3__* PROC_NULL ;
 int cmn_err (int ,char*) ;
 int cs_allow_invalid (TYPE_3__*) ;
 int dtrace_ptss_enable (TYPE_3__*) ;
 TYPE_5__* dtrace_state_get (int) ;
 int fasttrap_disable_callbacks () ;
 int fasttrap_enable_callbacks () ;
 int fasttrap_tracepoint_disable (TYPE_3__*,TYPE_4__*,int) ;
 int fasttrap_tracepoint_enable (TYPE_3__*,TYPE_4__*,int) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int mac_proc_check_get_task (int *,TYPE_3__*) ;
 int proc_lock (TYPE_3__*) ;
 int proc_unlock (TYPE_3__*) ;
 TYPE_3__* sprlock (int ) ;
 int sprunlock (TYPE_3__*) ;

__attribute__((used)) static int
fasttrap_pid_enable(void *arg, dtrace_id_t id, void *parg)
{
#pragma unused(arg, id)
 fasttrap_probe_t *probe = parg;
 proc_t *p;
 int i, rc;

 ASSERT(probe != ((void*)0));
 ASSERT(!probe->ftp_enabled);
 ASSERT(id == probe->ftp_id);
 lck_mtx_lock(&probe->ftp_prov->ftp_mtx);
 probe->ftp_prov->ftp_rcount++;
 lck_mtx_unlock(&probe->ftp_prov->ftp_mtx);






 if (probe->ftp_prov->ftp_retired)
     return(0);






 if ((p = sprlock(probe->ftp_pid)) == PROC_NULL) {





     return(0);
 }

 if ((p->p_csflags & (CS_KILL|CS_HARD))) {
  proc_unlock(p);
  for (i = 0; i < DTRACE_NCLIENTS; i++) {
   dtrace_state_t *state = dtrace_state_get(i);
   if (state == ((void*)0))
    continue;
   if (state->dts_cred.dcr_cred == ((void*)0))
    continue;
   mac_proc_check_get_task(state->dts_cred.dcr_cred, p);
  }
  rc = cs_allow_invalid(p);
  proc_lock(p);
  if (rc == 0) {
   sprunlock(p);
   cmn_err(CE_WARN, "process doesn't allow invalid code pages, failing to install fasttrap probe\n");
   return (0);
  }
 }
 if (p->p_dtrace_ptss_pages == ((void*)0)) {
  dtrace_ptss_enable(p);
 }


 proc_unlock(p);






 fasttrap_enable_callbacks();





 for (i = 0; i < (int)probe->ftp_ntps; i++) {
  if ((rc = fasttrap_tracepoint_enable(p, probe, i)) != 0) {





   if (rc == FASTTRAP_ENABLE_FAIL)
    i--;
   else
    ASSERT(rc == FASTTRAP_ENABLE_PARTIAL);





   while (i >= 0) {
    fasttrap_tracepoint_disable(p, probe, i);
    i--;
   }

   proc_lock(p);
   sprunlock(p);





   fasttrap_disable_callbacks();
   return(0);
  }
 }

 proc_lock(p);
 sprunlock(p);

 probe->ftp_enabled = 1;
 return (0);
}
