
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* thread_t ;
struct x86_fx_thread_state {int fp_save_layout; scalar_t__ fp_valid; } ;
typedef scalar_t__ boolean_t ;
struct TYPE_5__ {struct x86_fx_thread_state* ifps; } ;
struct TYPE_6__ {TYPE_1__ machine; } ;


 scalar_t__ FP ;
 int FXSAVE32 ;
 int FXSAVE64 ;
 int XSAVE32 ;
 int XSAVE64 ;
 int mp_disable_preemption () ;
 int mp_enable_preemption () ;
 scalar_t__ thread_xstate (TYPE_2__*) ;

void
fpu_switch_addrmode(thread_t thread, boolean_t is_64bit)
{
 struct x86_fx_thread_state *ifps = thread->machine.ifps;
 mp_disable_preemption();

 if (ifps && ifps->fp_valid) {
  if (thread_xstate(thread) == FP) {
   ifps->fp_save_layout = is_64bit ? FXSAVE64 : FXSAVE32;
  } else {
   ifps->fp_save_layout = is_64bit ? XSAVE64 : XSAVE32;
  }
 }
 mp_enable_preemption();
}
