
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef int thread_state_t ;
struct x86_act_context64 {int fs; int ss; } ;
struct x86_act_context32 {int fs; int ss; } ;
typedef scalar_t__ kern_return_t ;


 scalar_t__ KERN_SUCCESS ;
 int current_thread () ;
 int kfree (struct x86_act_context64*,int) ;
 scalar_t__ machine_thread_set_state (int ,int ,int ,int ) ;
 scalar_t__ thread_is_64bit_addr (int ) ;
 int x86_FLOAT_STATE32 ;
 int x86_FLOAT_STATE32_COUNT ;
 int x86_FLOAT_STATE64 ;
 int x86_FLOAT_STATE64_COUNT ;
 int x86_SAVED_STATE32 ;
 int x86_SAVED_STATE32_COUNT ;
 int x86_SAVED_STATE64 ;
 int x86_SAVED_STATE64_COUNT ;

void
act_thread_catt(void *ctx)
{
        thread_t thr_act = current_thread();
 kern_return_t kret;

 if (ctx == (void *)((void*)0))
    return;

        if (thread_is_64bit_addr(thr_act)) {
         struct x86_act_context64 *ic64;

         ic64 = (struct x86_act_context64 *)ctx;

  kret = machine_thread_set_state(thr_act, x86_SAVED_STATE64,
      (thread_state_t) &ic64->ss, x86_SAVED_STATE64_COUNT);
  if (kret == KERN_SUCCESS) {
           machine_thread_set_state(thr_act, x86_FLOAT_STATE64,
        (thread_state_t) &ic64->fs, x86_FLOAT_STATE64_COUNT);
  }
  kfree(ic64, sizeof(struct x86_act_context64));
 } else {
         struct x86_act_context32 *ic32;

         ic32 = (struct x86_act_context32 *)ctx;

  kret = machine_thread_set_state(thr_act, x86_SAVED_STATE32,
      (thread_state_t) &ic32->ss, x86_SAVED_STATE32_COUNT);
  if (kret == KERN_SUCCESS) {
   (void) machine_thread_set_state(thr_act, x86_FLOAT_STATE32,
       (thread_state_t) &ic32->fs, x86_FLOAT_STATE32_COUNT);
  }
  kfree(ic32, sizeof(struct x86_act_context32));
 }
}
