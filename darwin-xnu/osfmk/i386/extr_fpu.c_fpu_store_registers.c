
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xstate_t ;
struct x86_fx_thread_state {int fp_save_layout; } ;
typedef int boolean_t ;


 int ALIGNED (struct x86_fx_thread_state*,int) ;



 int FXSAVE32 ;
 int FXSAVE64 ;
 int XSAVE32 ;
 int XSAVE64 ;
 int assert (int ) ;
 int current_xstate () ;
 int fxsave (void*) ;
 int fxsave64 (void*) ;
 int panic (char*,int) ;
 int xsave (struct x86_fx_thread_state*,int ) ;
 int xsave64 (struct x86_fx_thread_state*,int ) ;
 int * xstate_xmask ;

__attribute__((used)) static void fpu_store_registers(void *fstate, boolean_t is64) {
 struct x86_fx_thread_state *ifps = fstate;
 assert(ALIGNED(ifps, 64));
 xstate_t xs = current_xstate();
 switch (xs) {
     case 128:
  if (is64) {
   fxsave64(fstate);
   ifps->fp_save_layout = FXSAVE64;
  } else {
   fxsave(fstate);
   ifps->fp_save_layout = FXSAVE32;
  }
  break;
     case 130:

     case 129:

  if (is64) {
   xsave64(ifps, xstate_xmask[xs]);
   ifps->fp_save_layout = XSAVE64;
  } else {
   xsave(ifps, xstate_xmask[xs]);
   ifps->fp_save_layout = XSAVE32;
  }
  break;
     default:
  panic("fpu_store_registers() bad xstate: %d\n", xs);
 }
}
