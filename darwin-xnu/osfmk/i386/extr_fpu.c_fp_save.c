
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int thread_t ;
struct x86_fx_thread_state {scalar_t__ fp_valid; } ;
typedef TYPE_1__* pcb_t ;
struct TYPE_3__ {struct x86_fx_thread_state* ifps; } ;


 int CR0_TS ;
 TYPE_1__* THREAD_TO_PCB (int ) ;
 scalar_t__ TRUE ;
 int assert (int) ;
 int fpu_store_registers (struct x86_fx_thread_state*,int ) ;
 int get_cr0 () ;
 int thread_is_64bit_addr (int ) ;

void
fp_save(
 thread_t thr_act)
{
 pcb_t pcb = THREAD_TO_PCB(thr_act);
 struct x86_fx_thread_state *ifps = pcb->ifps;

 assert(ifps != 0);
 if (ifps != 0 && !ifps->fp_valid) {
  assert((get_cr0() & CR0_TS) == 0);

  ifps->fp_valid = TRUE;
  fpu_store_registers(ifps, thread_is_64bit_addr(thr_act));
 }
}
