
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int minor_t ;
struct TYPE_5__ {struct TYPE_5__* dts_anon; } ;
typedef TYPE_1__ dtrace_state_t ;
typedef int dev_t ;
typedef int cred_t ;
struct TYPE_6__ {int * dta_enabling; int * dta_state; } ;


 int ASSERT (int) ;
 scalar_t__ DTRACE_DOF_MODE_LAZY_OFF ;
 scalar_t__ DTRACE_DOF_MODE_LAZY_ON ;
 scalar_t__ DTRACE_KERNEL_SYMBOLS_FROM_KERNEL ;
 scalar_t__ DTRACE_KERNEL_SYMBOLS_FROM_USERSPACE ;
 int KDI_DTSET_DTRACE_DEACTIVATE ;
 int cpu_lock ;
 TYPE_4__ dtrace_anon ;
 scalar_t__ dtrace_dof_mode ;
 int dtrace_dof_mode_lock ;
 scalar_t__ dtrace_kernel_symbol_mode ;
 int dtrace_lock ;
 int dtrace_module_unloaded (int *) ;
 scalar_t__ dtrace_opens ;
 int dtrace_state_destroy (TYPE_1__*) ;
 TYPE_1__* dtrace_state_get (int ) ;
 int getminor (int ) ;
 int kdi_dtrace_set (int ) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int lck_rw_lock_exclusive (int *) ;
 int lck_rw_unlock_exclusive (int *) ;

__attribute__((used)) static int
dtrace_close(dev_t dev, int flag, int otyp, cred_t *cred_p)
{
#pragma unused(flag, otyp, cred_p)
 minor_t minor = getminor(dev);
 dtrace_state_t *state;


 state = dtrace_state_get(minor);

 lck_mtx_lock(&cpu_lock);
 lck_mtx_lock(&dtrace_lock);

 if (state->dts_anon) {



  ASSERT(dtrace_anon.dta_state == ((void*)0));
  dtrace_state_destroy(state->dts_anon);
 }

 dtrace_state_destroy(state);
 ASSERT(dtrace_opens > 0);





 if (--dtrace_opens == 0 && dtrace_anon.dta_enabling == ((void*)0)) {



 }

 lck_mtx_unlock(&dtrace_lock);
 lck_mtx_unlock(&cpu_lock);





 lck_rw_lock_exclusive(&dtrace_dof_mode_lock);
 lck_mtx_lock(&dtrace_lock);

 if (dtrace_opens == 0) {




  if (dtrace_dof_mode == DTRACE_DOF_MODE_LAZY_OFF) {
   dtrace_dof_mode = DTRACE_DOF_MODE_LAZY_ON;
  }




  if (dtrace_kernel_symbol_mode == DTRACE_KERNEL_SYMBOLS_FROM_KERNEL) {
   dtrace_kernel_symbol_mode = DTRACE_KERNEL_SYMBOLS_FROM_USERSPACE;
  }
 }

 lck_mtx_unlock(&dtrace_lock);
 lck_rw_unlock_exclusive(&dtrace_dof_mode_lock);







 dtrace_module_unloaded(((void*)0));

 return (0);
}
