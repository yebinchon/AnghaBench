
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int uint32_t ;
typedef int event_t ;
typedef int cpu_data_t ;
typedef int (* broadcastFunc ) (void*) ;
typedef scalar_t__ boolean_t ;
struct TYPE_2__ {scalar_t__ cpu_data_vaddr; } ;


 TYPE_1__* CpuDataEntries ;
 scalar_t__ FALSE ;
 scalar_t__ KERN_SUCCESS ;
 int SIGPxcall ;
 int THREAD_AWAKENED ;
 int THREAD_CONTINUE_NULL ;
 int THREAD_UNINT ;
 int assert_wait (int ,int ) ;
 int clear_wait (int ,int ) ;
 scalar_t__ cpu_signal (int *,int ,void*,void*) ;
 int current_thread () ;
 int * getCpuDatap () ;
 scalar_t__ hw_atomic_sub (unsigned int*,unsigned int) ;
 int ml_get_max_cpu_number () ;
 scalar_t__ ml_set_interrupts_enabled (scalar_t__) ;
 unsigned int real_ncpus ;
 int thread_block (int ) ;

unsigned int
cpu_broadcast_xcall(uint32_t *synch,
      boolean_t self_xcall,
      broadcastFunc func,
      void *parm)
{
 boolean_t intr;
 cpu_data_t *cpu_data_ptr;
 cpu_data_t *target_cpu_datap;
 unsigned int failsig;
 int cpu;
 int max_cpu;

 intr = ml_set_interrupts_enabled(FALSE);
 cpu_data_ptr = getCpuDatap();

 failsig = 0;

 if (synch != ((void*)0)) {
  *synch = real_ncpus;
  assert_wait((event_t)synch, THREAD_UNINT);
 }

 max_cpu = ml_get_max_cpu_number();
 for (cpu=0; cpu <= max_cpu; cpu++) {
  target_cpu_datap = (cpu_data_t *)CpuDataEntries[cpu].cpu_data_vaddr;

  if ((target_cpu_datap == ((void*)0)) || (target_cpu_datap == cpu_data_ptr))
   continue;

  if(KERN_SUCCESS != cpu_signal(target_cpu_datap, SIGPxcall, (void *)func, parm)) {
   failsig++;
  }
 }


 if (self_xcall) {
  func(parm);
 }

 (void) ml_set_interrupts_enabled(intr);

 if (synch != ((void*)0)) {
  if (hw_atomic_sub(synch, (!self_xcall)? failsig+1 : failsig) == 0)
   clear_wait(current_thread(), THREAD_AWAKENED);
  else
   thread_block(THREAD_CONTINUE_NULL);
 }

 if (!self_xcall)
  return (real_ncpus - failsig - 1);
 else
  return (real_ncpus - failsig);
}
