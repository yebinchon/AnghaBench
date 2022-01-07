
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int gs; } ;
struct TYPE_5__ {int rsp; int rflags; int ss; int cs; int rip; int err; int trapno; } ;
struct TYPE_6__ {TYPE_1__ isf; int gs; int fs; int r15; int r14; int r13; int r12; int r11; int r10; int rbp; int rbx; int rax; int r9; int r8; int rcx; int rdx; int rsi; int rdi; } ;
struct TYPE_8__ {TYPE_3__ ss_32; TYPE_2__ ss_64; } ;
typedef TYPE_4__ x86_saved_state_t ;
typedef size_t uint_t ;
typedef int uint64_t ;
struct regs {int dummy; } ;
typedef scalar_t__ boolean_t ;


 int CPU_DTRACE_ILLOP ;
 int DTRACE_CPUFLAG_SET (int ) ;
 size_t SS ;
 int current_proc () ;
 scalar_t__ proc_is64bit (int ) ;
 size_t* regmap ;
 int x86_SAVED_STATE32_COUNT ;

uint64_t
dtrace_getreg(struct regs *savearea, uint_t reg)
{
 boolean_t is64Bit = proc_is64bit(current_proc());
 x86_saved_state_t *regs = (x86_saved_state_t *)savearea;

 if (regs == ((void*)0)) {
  DTRACE_CPUFLAG_SET(CPU_DTRACE_ILLOP);
  return (0);
 }

 if (is64Bit) {
     if (reg <= SS) {
  reg = regmap[reg];
     } else {
  reg -= (SS + 1);
     }

     switch (reg) {
     case 135:
  return (uint64_t)(regs->ss_64.rdi);
     case 131:
  return (uint64_t)(regs->ss_64.rsi);
     case 134:
  return (uint64_t)(regs->ss_64.rdx);
     case 136:
  return (uint64_t)(regs->ss_64.rcx);
     case 141:
  return (uint64_t)(regs->ss_64.r8);
     case 140:
  return (uint64_t)(regs->ss_64.r9);
     case 139:
  return (uint64_t)(regs->ss_64.rax);
     case 137:
  return (uint64_t)(regs->ss_64.rbx);
     case 138:
  return (uint64_t)(regs->ss_64.rbp);
     case 147:
  return (uint64_t)(regs->ss_64.r10);
     case 146:
  return (uint64_t)(regs->ss_64.r11);
     case 145:
  return (uint64_t)(regs->ss_64.r12);
     case 144:
  return (uint64_t)(regs->ss_64.r13);
     case 143:
  return (uint64_t)(regs->ss_64.r14);
     case 142:
  return (uint64_t)(regs->ss_64.r15);
     case 149:
  return (uint64_t)(regs->ss_64.fs);
     case 148:
  return (uint64_t)(regs->ss_64.gs);
     case 128:
  return (uint64_t)(regs->ss_64.isf.trapno);
     case 151:
  return (uint64_t)(regs->ss_64.isf.err);
     case 132:
  return (uint64_t)(regs->ss_64.isf.rip);
     case 153:
  return (uint64_t)(regs->ss_64.isf.cs);
     case 129:
  return (uint64_t)(regs->ss_64.isf.ss);
     case 133:
  return (uint64_t)(regs->ss_64.isf.rflags);
     case 130:
  return (uint64_t)(regs->ss_64.isf.rsp);
     case 152:
     case 150:
     default:
  DTRACE_CPUFLAG_SET(CPU_DTRACE_ILLOP);
  return (0);
     }

 } else {

  if (reg > x86_SAVED_STATE32_COUNT - 1) {
   DTRACE_CPUFLAG_SET(CPU_DTRACE_ILLOP);
   return (0);
  }
  return (uint64_t)((unsigned int *)(&(regs->ss_32.gs)))[reg];
 }
}
