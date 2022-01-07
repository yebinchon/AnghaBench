
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef int uint64_t ;
struct regs {int dummy; } ;
struct arm_saved_state {int dummy; } ;







 int ARM_CPSR ;
 int ARM_FP ;
 int ARM_LR ;
 int ARM_PC ;
 int ARM_SP ;
 int CPU_DTRACE_ILLOP ;
 int DTRACE_CPUFLAG_SET (int ) ;
 int check_saved_state_reglimit (struct arm_saved_state*,int ) ;
 scalar_t__ get_saved_state_reg (struct arm_saved_state*,int ) ;
 scalar_t__ is_saved_state32 (struct arm_saved_state*) ;

uint64_t
dtrace_getreg(struct regs * savearea, uint_t reg)
{
 struct arm_saved_state *regs = (struct arm_saved_state *) savearea;

 if (regs == ((void*)0)) {
  DTRACE_CPUFLAG_SET(CPU_DTRACE_ILLOP);
  return (0);
 }

 if (is_saved_state32(regs)) {

  switch (reg) {
   case 131:
    reg = ARM_FP;
   break;
   case 128:
    reg = ARM_SP;
   break;
   case 130:
    reg = ARM_LR;
   break;
   case 129:
    reg = ARM_PC;
   break;
   case 132:
    reg = ARM_CPSR;
   break;
  }
 }

 if (!check_saved_state_reglimit(regs, reg)) {
  DTRACE_CPUFLAG_SET(CPU_DTRACE_ILLOP);
  return (0);
 }

 return ((uint64_t)get_saved_state_reg(regs, reg));
}
