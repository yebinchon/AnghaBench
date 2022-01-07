
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * maskp; int arg1; int arg0; int (* func ) (int ,int ) ;} ;
typedef TYPE_1__ mp_call_t ;
typedef int mp_call_queue_t ;
typedef int boolean_t ;


 int KERNEL_DEBUG_CONSTANT (int ,int ,int ,int ,int ,int ) ;
 int TRACE_MP_CPUS_CALL_ACTION ;
 int VM_KERNEL_ADDRPERM (int *) ;
 int VM_KERNEL_UNSLIDE (int (*) (int ,int )) ;
 int VM_KERNEL_UNSLIDE_OR_PERM (int ) ;
 int assert (int) ;
 size_t cpu_number () ;
 int i_bit_set (size_t,int *) ;
 int ml_get_interrupts_enabled () ;
 TYPE_1__* mp_call_dequeue_locked (int *) ;
 int mp_call_free (TYPE_1__*) ;
 int mp_call_head_lock (int *) ;
 int mp_call_head_unlock (int *,int ) ;
 int * mp_cpus_call_head ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void
mp_cpus_call_action(void)
{
 mp_call_queue_t *cqp;
 boolean_t intrs_enabled;
 mp_call_t *callp;
 mp_call_t call;

 assert(!ml_get_interrupts_enabled());
 cqp = &mp_cpus_call_head[cpu_number()];
 intrs_enabled = mp_call_head_lock(cqp);
 while ((callp = mp_call_dequeue_locked(cqp)) != ((void*)0)) {

  call = *callp;
  mp_call_free(callp);
  if (call.func != ((void*)0)) {
   mp_call_head_unlock(cqp, intrs_enabled);
   KERNEL_DEBUG_CONSTANT(
    TRACE_MP_CPUS_CALL_ACTION,
    VM_KERNEL_UNSLIDE(call.func), VM_KERNEL_UNSLIDE_OR_PERM(call.arg0),
    VM_KERNEL_UNSLIDE_OR_PERM(call.arg1), VM_KERNEL_ADDRPERM(call.maskp), 0);
   call.func(call.arg0, call.arg1);
   (void) mp_call_head_lock(cqp);
  }
  if (call.maskp != ((void*)0))
   i_bit_set(cpu_number(), call.maskp);
 }
 mp_call_head_unlock(cqp, intrs_enabled);
}
