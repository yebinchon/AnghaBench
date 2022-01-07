
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct x86_fx_thread_state {int fp_save_layout; } ;
struct TYPE_2__ {int xstate_bv; scalar_t__* xhrsvd; } ;
struct x86_avx_thread_state {TYPE_1__ _xh; } ;
typedef int fp_save_layout_t ;


 int ALIGNED (struct x86_fx_thread_state*,int) ;
 scalar_t__ FALSE ;




 int assert (int) ;
 int * current_task () ;
 int current_thread () ;
 size_t current_xstate () ;
 scalar_t__ fpu_YMM_capable ;
 int fxrstor (struct x86_fx_thread_state*) ;
 int fxrstor64 (struct x86_fx_thread_state*) ;
 scalar_t__ ml_get_interrupts_enabled () ;
 int panic (char*,...) ;
 scalar_t__ thread_is_64bit_addr (int ) ;
 int xrstor (struct x86_fx_thread_state*,int) ;
 int xrstor64 (struct x86_fx_thread_state*,int) ;
 int* xstate_xmask ;

__attribute__((used)) static void fpu_load_registers(void *fstate) {
 struct x86_fx_thread_state *ifps = fstate;
 fp_save_layout_t layout = ifps->fp_save_layout;

 assert(current_task() == ((void*)0) || (thread_is_64bit_addr(current_thread()) ? (layout == 130 || layout == 128) : (layout == 131 || layout == 129)));



 assert(ALIGNED(ifps, 64));
 assert(ml_get_interrupts_enabled() == FALSE);
 switch (layout) {
     case 130:
  fxrstor64(ifps);
  break;
     case 131:
  fxrstor(ifps);
  break;
     case 128:
  xrstor64(ifps, xstate_xmask[current_xstate()]);
  break;
     case 129:
  xrstor(ifps, xstate_xmask[current_xstate()]);
  break;
     default:
  panic("fpu_load_registers() bad layout: %d\n", layout);
 }
}
