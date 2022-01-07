
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ boolean_t ;


 int ASYNC ;
 int CPUMASK_ALL ;
 int VMX_INUSE ;
 int VMX_KPRINTF (char*,int) ;
 int VMX_OK ;
 int VMX_UNSUPPORTED ;
 int assert (int) ;
 scalar_t__ get_preemption_level () ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 int mp_cpus_call (int ,int ,int ,int *) ;
 int vmx_allocate_vmxon_regions () ;
 scalar_t__ vmx_exclusive ;
 int vmx_globally_available () ;
 int vmx_lck_mtx ;
 int vmx_on ;
 int vmx_use_count ;

int
host_vmxon(boolean_t exclusive)
{
 int error;

 assert(0 == get_preemption_level());

 if (!vmx_globally_available())
  return VMX_UNSUPPORTED;

 lck_mtx_lock(vmx_lck_mtx);

 if (vmx_exclusive || (exclusive && vmx_use_count)) {
  error = VMX_INUSE;
 } else {
  if (0 == vmx_use_count) {
   vmx_allocate_vmxon_regions();
   vmx_exclusive = exclusive;
   vmx_use_count = 1;
   mp_cpus_call(CPUMASK_ALL, ASYNC, vmx_on, ((void*)0));

  } else {
   vmx_use_count++;
  }

  VMX_KPRINTF("VMX use count: %d\n", vmx_use_count);
  error = VMX_OK;
 }

 lck_mtx_unlock(vmx_lck_mtx);

 return error;
}
