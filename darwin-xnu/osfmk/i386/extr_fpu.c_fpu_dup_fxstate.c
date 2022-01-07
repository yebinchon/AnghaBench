
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef size_t xstate_t ;
typedef TYPE_2__* thread_t ;
struct x86_fx_thread_state {int fx_MXCSR; scalar_t__ fp_valid; } ;
typedef TYPE_3__* pcb_t ;
typedef int boolean_t ;
struct TYPE_13__ {int lock; struct x86_fx_thread_state* ifps; } ;
struct TYPE_11__ {size_t xstate; struct x86_fx_thread_state* ifps; } ;
struct TYPE_12__ {TYPE_1__ machine; } ;


 int FALSE ;
 TYPE_3__* THREAD_TO_PCB (TYPE_2__*) ;
 int assert (int) ;
 int bcopy (char*,char*,int ) ;
 int clear_fpu () ;
 int clear_ts () ;
 TYPE_2__* current_thread () ;
 int fp_save (TYPE_2__*) ;
 struct x86_fx_thread_state* fp_state_alloc (size_t) ;
 int fp_state_free (struct x86_fx_thread_state*,size_t) ;
 int * fp_state_size ;
 int ml_set_interrupts_enabled (int ) ;
 int mxcsr_capability_mask ;
 int panic (char*) ;
 int simple_lock (int *) ;
 int simple_unlock (int *) ;
 size_t thread_xstate (TYPE_2__*) ;

void
fpu_dup_fxstate(
 thread_t parent,
 thread_t child)
{
 struct x86_fx_thread_state *new_ifps = ((void*)0);
 boolean_t intr;
 pcb_t ppcb;
 xstate_t xstate = thread_xstate(parent);

 ppcb = THREAD_TO_PCB(parent);

 if (ppcb->ifps == ((void*)0))
         return;

        if (child->machine.ifps)
         panic("fpu_dup_fxstate: child's ifps non-null");

 new_ifps = fp_state_alloc(xstate);

 simple_lock(&ppcb->lock);

 if (ppcb->ifps != ((void*)0)) {
  struct x86_fx_thread_state *ifps = ppcb->ifps;



  if (current_thread() == parent) {
   intr = ml_set_interrupts_enabled(FALSE);
   assert(current_thread() == parent);
   clear_ts();
   fp_save(parent);
   clear_fpu();

   (void)ml_set_interrupts_enabled(intr);
  }

  if (ifps->fp_valid) {
   child->machine.ifps = new_ifps;
   child->machine.xstate = xstate;
   bcopy((char *)(ppcb->ifps),
         (char *)(child->machine.ifps),
         fp_state_size[xstate]);
   new_ifps->fx_MXCSR &= mxcsr_capability_mask;
   new_ifps = ((void*)0);
  }
 }
 simple_unlock(&ppcb->lock);

 if (new_ifps != ((void*)0))
         fp_state_free(new_ifps, xstate);
}
