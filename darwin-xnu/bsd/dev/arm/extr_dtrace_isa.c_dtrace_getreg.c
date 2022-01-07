
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef int uint64_t ;
struct regs {int dummy; } ;
struct arm_saved_state {int r; } ;


 int ARM_SAVED_STATE32_COUNT ;
 int CPU_DTRACE_ILLOP ;
 int DTRACE_CPUFLAG_SET (int ) ;

uint64_t
dtrace_getreg(struct regs * savearea, uint_t reg)
{
 struct arm_saved_state *regs = (struct arm_saved_state *) savearea;
 if (regs == ((void*)0)) {
  DTRACE_CPUFLAG_SET(CPU_DTRACE_ILLOP);
  return (0);
 }

 if (reg > ARM_SAVED_STATE32_COUNT - 1) {
  DTRACE_CPUFLAG_SET(CPU_DTRACE_ILLOP);
  return (0);
 }

 return (uint64_t) ((unsigned int *) (&(regs->r)))[reg];
}
