
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t xstate_t ;
typedef int thread_t ;
struct x86_fx_thread_state {int fp_valid; int fp_save_layout; } ;
typedef TYPE_1__* pcb_t ;
typedef int boolean_t ;
struct TYPE_3__ {size_t xstate; struct x86_fx_thread_state* ifps; } ;


 int FALSE ;
 int FXSAVE32 ;
 int FXSAVE64 ;
 TYPE_1__* THREAD_TO_PCB (int ) ;
 int TRUE ;
 int XSAVE32 ;
 int XSAVE64 ;
 scalar_t__ __improbable (int ) ;
 int bcopy (char*,char*,int ) ;
 int clear_ts () ;
 int current_thread () ;
 size_t current_xstate () ;
 int fp_load (int ) ;
 int fp_save (int ) ;
 struct x86_fx_thread_state* fp_state_alloc (size_t) ;
 int fp_state_free (struct x86_fx_thread_state*,size_t) ;
 int * fp_state_size ;
 int fpinit () ;
 scalar_t__ fpu_YMM_capable ;
 int get_interrupt_level () ;
 int initial_fp_state ;
 int ml_set_interrupts_enabled (int ) ;
 int thread_is_64bit_addr (int ) ;
 int x86_isr_fp_simd_use ;

void
fpnoextflt(void)
{
 boolean_t intr;
 thread_t thr_act;
 pcb_t pcb;
 struct x86_fx_thread_state *ifps = 0;
 xstate_t xstate = current_xstate();

 thr_act = current_thread();
 pcb = THREAD_TO_PCB(thr_act);

 if (pcb->ifps == 0 && !get_interrupt_level()) {
         ifps = fp_state_alloc(xstate);
  bcopy((char *)&initial_fp_state, (char *)ifps,
      fp_state_size[xstate]);
  if (!thread_is_64bit_addr(thr_act)) {
   ifps->fp_save_layout = fpu_YMM_capable ? XSAVE32 : FXSAVE32;
  }
  else
   ifps->fp_save_layout = fpu_YMM_capable ? XSAVE64 : FXSAVE64;
  ifps->fp_valid = TRUE;
 }
 intr = ml_set_interrupts_enabled(FALSE);

 clear_ts();

 if (__improbable(get_interrupt_level())) {



  x86_isr_fp_simd_use++;




  if (pcb->ifps) {
   fp_save(thr_act);
  }
  fpinit();
 } else {
         if (pcb->ifps == 0) {
          pcb->ifps = ifps;
          pcb->xstate = xstate;
   ifps = 0;
  }



  fp_load(thr_act);
 }
 (void)ml_set_interrupts_enabled(intr);

 if (ifps)
         fp_state_free(ifps, xstate);
}
