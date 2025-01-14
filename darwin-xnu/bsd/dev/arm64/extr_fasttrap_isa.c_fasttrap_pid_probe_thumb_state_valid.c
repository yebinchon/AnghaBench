
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_5__ {int ftt_instr; int ftt_instr1; scalar_t__ ftt_thumb; } ;
typedef TYPE_1__ fasttrap_tracepoint_t ;
struct TYPE_6__ {scalar_t__ cpsr; int pc; } ;
typedef TYPE_2__ arm_saved_state32_t ;


 scalar_t__ GETITSTATE (scalar_t__) ;
 int ISLASTINIT (scalar_t__) ;
 scalar_t__ PSR_TF ;
 int dtrace_instr_size (int,scalar_t__) ;
 int printf (char*,int,int) ;

__attribute__((used)) static int
fasttrap_pid_probe_thumb_state_valid(arm_saved_state32_t *state32, fasttrap_tracepoint_t *tp)
{
 uint32_t cpsr = state32->cpsr;
 uint32_t itstate = GETITSTATE(cpsr);


 if ((itstate != 0) && !ISLASTINIT(itstate)) {
  printf("dtrace: fasttrap: Tried to trace instruction %08x at %08x but not at end of IT block\n",
    (tp->ftt_thumb && dtrace_instr_size(tp->ftt_instr,tp->ftt_thumb) == 2) ? tp->ftt_instr1 : tp->ftt_instr, state32->pc);
  return 0;
 }

 if (!(cpsr & PSR_TF)) {
  return 0;
 }

 return 1;
}
