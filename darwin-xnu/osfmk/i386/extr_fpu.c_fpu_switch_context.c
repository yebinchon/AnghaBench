
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef size_t xstate_t ;
typedef TYPE_2__* thread_t ;
struct x86_fx_thread_state {scalar_t__ fp_valid; } ;
struct TYPE_13__ {size_t cpu_xstate; } ;
typedef TYPE_3__ cpu_data_t ;
typedef int boolean_t ;
struct TYPE_11__ {int iss; struct x86_fx_thread_state* ifps; } ;
struct TYPE_12__ {TYPE_1__ machine; } ;


 size_t AVX ;
 size_t AVX512 ;
 int DBG (char*,TYPE_2__*,TYPE_2__*,int ) ;
 scalar_t__ FALSE ;
 int TRUE ;
 int XCR0 ;
 int assert (int) ;
 int assertf (int,char*,scalar_t__,size_t,scalar_t__) ;
 int clear_ts () ;
 TYPE_3__* current_cpu_datap () ;
 int default_avx512_state ;
 int default_avx_state ;
 int default_fx_state ;
 scalar_t__ fpu_YMM_capable ;
 scalar_t__ fpu_ZMM_capable ;
 size_t fpu_default ;
 int fpu_store_registers (struct x86_fx_thread_state*,int) ;
 int fxrstor64 (struct x86_fx_thread_state*) ;
 scalar_t__ is_saved_state64 (int ) ;
 scalar_t__ ml_get_interrupts_enabled () ;
 int panic (char*,int) ;
 int set_ts () ;
 scalar_t__ thread_is_64bit_addr (TYPE_2__*) ;
 size_t thread_xstate (TYPE_2__*) ;
 scalar_t__ xgetbv (int ) ;
 int xrstor64 (struct x86_fx_thread_state*,scalar_t__) ;
 int xsetbv (int ,scalar_t__) ;
 int * xstate_name ;
 scalar_t__* xstate_xmask ;

void
fpu_switch_context(thread_t old, thread_t new)
{
 struct x86_fx_thread_state *ifps;
 cpu_data_t *cdp = current_cpu_datap();
 xstate_t new_xstate = new ? thread_xstate(new) : fpu_default;

 assert(ml_get_interrupts_enabled() == FALSE);
 ifps = (old)->machine.ifps;





 if (ifps != 0 && (ifps->fp_valid == FALSE)) {





  clear_ts();

  boolean_t is64 = (thread_is_64bit_addr(old) &&
      is_saved_state64(old->machine.iss));

  fpu_store_registers(ifps, is64);
  ifps->fp_valid = TRUE;

  if (fpu_ZMM_capable && (cdp->cpu_xstate == AVX512)) {
   xrstor64((struct x86_fx_thread_state *)&default_avx512_state, xstate_xmask[AVX512]);
  } else if (fpu_YMM_capable) {
   xrstor64((struct x86_fx_thread_state *) &default_avx_state, xstate_xmask[AVX]);
  } else {
   fxrstor64((struct x86_fx_thread_state *)&default_fx_state);
  }
 }

 assertf(fpu_YMM_capable ? (xgetbv(XCR0) == xstate_xmask[cdp->cpu_xstate]) : TRUE, "XCR0 mismatch: 0x%llx 0x%x 0x%x", xgetbv(XCR0), cdp->cpu_xstate, xstate_xmask[cdp->cpu_xstate]);
 if (new_xstate != cdp->cpu_xstate) {
  DBG("fpu_switch_context(%p,%p) new xstate: %s\n",
   old, new, xstate_name[new_xstate]);
  xsetbv(0, xstate_xmask[new_xstate]);
  cdp->cpu_xstate = new_xstate;
 }
 set_ts();
}
