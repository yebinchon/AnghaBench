
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int thread_t ;
struct x86_fx_thread_state {scalar_t__ fp_valid; int ** fx_XMM_reg; } ;
typedef scalar_t__ boolean_t ;
struct TYPE_2__ {struct x86_fx_thread_state* ifps; } ;


 uintptr_t CR0_TS ;
 scalar_t__ FALSE ;
 TYPE_1__* THREAD_TO_PCB (int ) ;
 int clear_ts () ;
 int fp_save (int ) ;
 scalar_t__ fpsimd_fault_popc ;
 int fpsimd_pop (uintptr_t,int) ;
 uintptr_t get_cr0 () ;
 scalar_t__ ml_set_interrupts_enabled (scalar_t__) ;
 int set_cr0 (uintptr_t) ;

uint32_t thread_fpsimd_hash(thread_t ft) {
 if (fpsimd_fault_popc == 0)
  return 0;

 uint32_t prv = 0;
 boolean_t istate = ml_set_interrupts_enabled(FALSE);
 struct x86_fx_thread_state *pifps = THREAD_TO_PCB(ft)->ifps;

 if (pifps) {
  if (pifps->fp_valid) {
   prv = fpsimd_pop((uintptr_t) &pifps->fx_XMM_reg[0][0],
       sizeof(pifps->fx_XMM_reg));
  } else {
   uintptr_t cr0 = get_cr0();
   clear_ts();
   fp_save(ft);
   prv = fpsimd_pop((uintptr_t) &pifps->fx_XMM_reg[0][0],
       sizeof(pifps->fx_XMM_reg));
   pifps->fp_valid = FALSE;
   if (cr0 & CR0_TS) {
    set_cr0(cr0);
   }
  }
 }
 ml_set_interrupts_enabled(istate);
 return prv;
}
