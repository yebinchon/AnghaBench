
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int thread_t ;
struct x86_fx_thread_state {scalar_t__ fp_valid; int fp_save_layout; } ;
typedef TYPE_1__* pcb_t ;
struct TYPE_3__ {struct x86_fx_thread_state* ifps; } ;


 scalar_t__ FALSE ;
 TYPE_1__* THREAD_TO_PCB (int ) ;
 scalar_t__ TRUE ;
 int assert (struct x86_fx_thread_state*) ;
 int fpinit () ;
 int fpu_load_registers (struct x86_fx_thread_state*) ;
 int panic (char*,scalar_t__,int ) ;

void
fp_load(
 thread_t thr_act)
{
 pcb_t pcb = THREAD_TO_PCB(thr_act);
 struct x86_fx_thread_state *ifps = pcb->ifps;

 assert(ifps);







 if (ifps->fp_valid == FALSE) {
  fpinit();
 } else {
  fpu_load_registers(ifps);
 }
 ifps->fp_valid = FALSE;
}
