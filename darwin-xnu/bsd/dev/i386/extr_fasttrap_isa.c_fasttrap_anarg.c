
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int x86_saved_state_t ;
struct TYPE_6__ {scalar_t__ rsp; } ;
struct TYPE_7__ {TYPE_1__ isf; int rdi; } ;
typedef TYPE_2__ x86_saved_state64_t ;
struct TYPE_8__ {scalar_t__ uesp; } ;
typedef TYPE_3__ x86_saved_state32_t ;
typedef scalar_t__ user_addr_t ;
typedef int uint64_t ;
typedef int uint32_t ;


 int CPU_DTRACE_BADADDR ;
 int CPU_DTRACE_NOFAULT ;
 unsigned int DATAMODEL_ILP32 ;
 unsigned int DATAMODEL_LP64 ;
 int DTRACE_CPUFLAG_CLEAR (int) ;
 int DTRACE_CPUFLAG_SET (int) ;
 int dtrace_fuword32 (scalar_t__) ;
 int dtrace_fuword64 (scalar_t__) ;
 scalar_t__ is_saved_state64 (int *) ;
 TYPE_3__* saved_state32 (int *) ;
 TYPE_2__* saved_state64 (int *) ;

__attribute__((used)) static uint64_t
fasttrap_anarg(x86_saved_state_t *regs, int function_entry, int argno)
{
 uint64_t value;
 int shift = function_entry ? 1 : 0;

 x86_saved_state64_t *regs64;
 x86_saved_state32_t *regs32;
 unsigned int p_model;

        if (is_saved_state64(regs)) {
                regs64 = saved_state64(regs);
  regs32 = ((void*)0);
  p_model = DATAMODEL_LP64;
        } else {
  regs64 = ((void*)0);
                regs32 = saved_state32(regs);
  p_model = DATAMODEL_ILP32;
        }

 if (p_model == DATAMODEL_LP64) {
  user_addr_t stack;





  if (argno < 6)
   return ((&regs64->rdi)[argno]);

  stack = regs64->isf.rsp + sizeof(uint64_t) * (argno - 6 + shift);
  DTRACE_CPUFLAG_SET(CPU_DTRACE_NOFAULT);
  value = dtrace_fuword64(stack);
  DTRACE_CPUFLAG_CLEAR(CPU_DTRACE_NOFAULT | CPU_DTRACE_BADADDR);
 } else {
  uint32_t *stack = (uint32_t *)(uintptr_t)(regs32->uesp);
  DTRACE_CPUFLAG_SET(CPU_DTRACE_NOFAULT);
  value = dtrace_fuword32((user_addr_t)(unsigned long)&stack[argno + shift]);
  DTRACE_CPUFLAG_CLEAR(CPU_DTRACE_NOFAULT | CPU_DTRACE_BADADDR);
 }

 return (value);
}
