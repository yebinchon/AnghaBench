
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* thread_t ;
struct x86_fx_thread_state {scalar_t__ fp_valid; } ;
typedef scalar_t__ boolean_t ;
struct TYPE_4__ {struct x86_fx_thread_state* ifps; } ;
struct TYPE_5__ {TYPE_1__ machine; } ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int clear_fpu () ;
 TYPE_2__* current_thread () ;
 scalar_t__ ml_set_interrupts_enabled (scalar_t__) ;

void
fp_setvalid(boolean_t value) {
        thread_t thr_act = current_thread();
 struct x86_fx_thread_state *ifps = thr_act->machine.ifps;

 if (ifps) {
         ifps->fp_valid = value;

  if (value == TRUE) {
   boolean_t istate = ml_set_interrupts_enabled(FALSE);
          clear_fpu();
   ml_set_interrupts_enabled(istate);
  }
 }
}
