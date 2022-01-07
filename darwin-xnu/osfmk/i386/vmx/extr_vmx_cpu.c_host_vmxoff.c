
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASYNC ;
 int CPUMASK_ALL ;
 int FALSE ;
 int VMX_KPRINTF (char*,int) ;
 int assert (int) ;
 scalar_t__ get_preemption_level () ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int mp_cpus_call (int ,int ,int ,int *) ;
 int vmx_exclusive ;
 int vmx_free_vmxon_regions () ;
 int vmx_lck_mtx ;
 int vmx_off ;
 int vmx_use_count ;

void
host_vmxoff()
{
 assert(0 == get_preemption_level());

 lck_mtx_lock(vmx_lck_mtx);

 if (1 == vmx_use_count) {
  vmx_exclusive = FALSE;
  vmx_use_count = 0;
  mp_cpus_call(CPUMASK_ALL, ASYNC, vmx_off, ((void*)0));
  vmx_free_vmxon_regions();
 } else {
  vmx_use_count--;
 }

 lck_mtx_unlock(vmx_lck_mtx);

 VMX_KPRINTF("VMX use count: %d\n", vmx_use_count);
}
