
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zoneid_t ;
typedef scalar_t__ uint32_t ;
typedef int uid_t ;
typedef int dtrace_state_t ;
typedef int dev_t ;
typedef int cred_t ;
struct TYPE_2__ {int * dta_enabling; } ;


 scalar_t__ DTRACE_DOF_MODE_LAZY_OFF ;
 scalar_t__ DTRACE_DOF_MODE_LAZY_ON ;
 scalar_t__ DTRACE_KERNEL_SYMBOLS_FROM_KERNEL ;
 scalar_t__ DTRACE_KERNEL_SYMBOLS_FROM_USERSPACE ;
 scalar_t__ DTRACE_PRIV_NONE ;
 int EACCES ;
 int EBUSY ;
 int KDI_DTSET_DTRACE_ACTIVATE ;
 int KDI_DTSET_DTRACE_DEACTIVATE ;
 int PROC_ALLPROCLIST ;
 int PROC_NOWAITTRANS ;
 int cpu_lock ;
 TYPE_1__ dtrace_anon ;
 int dtrace_cred2priv (int *,scalar_t__*,int *,int *) ;
 scalar_t__ dtrace_dof_mode ;
 int dtrace_dof_mode_lock ;
 scalar_t__ dtrace_kernel_symbol_mode ;
 int dtrace_lazy_dofs_proc_iterate_doit ;
 int dtrace_lazy_dofs_proc_iterate_filter ;
 int dtrace_lock ;
 int dtrace_membar_producer () ;
 scalar_t__ dtrace_opens ;
 int dtrace_probe_provide (int *,int *) ;
 int dtrace_provider_lock ;
 int dtrace_state_create (int *,int *,int **) ;
 int fasttrap_init () ;
 scalar_t__ kdi_dtrace_set (int ) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int lck_rw_lock_exclusive (int *) ;
 int lck_rw_lock_exclusive_to_shared (int *) ;
 int lck_rw_unlock_exclusive (int *) ;
 int lck_rw_unlock_shared (int *) ;
 int proc_iterate (int,int ,int *,int ,int *) ;

__attribute__((used)) static int
dtrace_open(dev_t *devp, int flag, int otyp, cred_t *cred_p)
{
#pragma unused(flag, otyp)
 dtrace_state_t *state;
 uint32_t priv;
 uid_t uid;
 zoneid_t zoneid;
 int rv;







 dtrace_cred2priv(cred_p, &priv, &uid, &zoneid);
 if (priv == DTRACE_PRIV_NONE)
  return (EACCES);





 fasttrap_init();




 lck_mtx_lock(&dtrace_provider_lock);
 dtrace_probe_provide(((void*)0), ((void*)0));
 lck_mtx_unlock(&dtrace_provider_lock);

 lck_mtx_lock(&cpu_lock);
 lck_mtx_lock(&dtrace_lock);
 dtrace_opens++;
 dtrace_membar_producer();
 rv = dtrace_state_create(devp, cred_p, &state);
 lck_mtx_unlock(&cpu_lock);

 if (rv != 0 || state == ((void*)0)) {
  if (--dtrace_opens == 0 && dtrace_anon.dta_enabling == ((void*)0)) {



  }
  lck_mtx_unlock(&dtrace_lock);

  return (rv);
 }

 lck_mtx_unlock(&dtrace_lock);

 lck_rw_lock_exclusive(&dtrace_dof_mode_lock);
 if (dtrace_dof_mode == DTRACE_DOF_MODE_LAZY_ON) {
  dtrace_dof_mode = DTRACE_DOF_MODE_LAZY_OFF;
  lck_rw_lock_exclusive_to_shared(&dtrace_dof_mode_lock);



  proc_iterate(PROC_ALLPROCLIST | PROC_NOWAITTRANS,
        dtrace_lazy_dofs_proc_iterate_doit,
        ((void*)0),
        dtrace_lazy_dofs_proc_iterate_filter,
        ((void*)0));

  lck_rw_unlock_shared(&dtrace_dof_mode_lock);
 }
 else {
  lck_rw_unlock_exclusive(&dtrace_dof_mode_lock);
 }
 lck_mtx_lock(&dtrace_lock);
 if (dtrace_kernel_symbol_mode == DTRACE_KERNEL_SYMBOLS_FROM_USERSPACE) {
  dtrace_kernel_symbol_mode = DTRACE_KERNEL_SYMBOLS_FROM_KERNEL;
 }
 lck_mtx_unlock(&dtrace_lock);

 return (0);
}
