
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int x86_saved_state_t ;
struct TYPE_6__ {int ss; int rflags; int cs; int rip; int err; int trapno; int rsp; } ;
struct TYPE_7__ {int gs; int fs; TYPE_1__ isf; int r15; int r14; int r13; int r12; int r11; int r10; int r9; int r8; int rdi; int rsi; int rbp; int rbx; int rdx; int rcx; int rax; } ;
typedef TYPE_2__ x86_saved_state64_t ;
struct TYPE_8__ {int edi; int esi; int ebp; int uesp; int ebx; int edx; int ecx; int eax; } ;
typedef TYPE_3__ x86_saved_state32_t ;
typedef int user_addr_t ;
typedef int uint_t ;
 scalar_t__ is_saved_state64 (int *) ;
 int panic (char*) ;
 TYPE_3__* saved_state32 (int *) ;
 TYPE_2__* saved_state64 (int *) ;

__attribute__((used)) static user_addr_t
fasttrap_getreg(x86_saved_state_t *regs, uint_t reg)
{
 if (is_saved_state64(regs)) {
  x86_saved_state64_t *regs64 = saved_state64(regs);

  switch (reg) {
   case 139: return regs64->rax;
   case 136: return regs64->rcx;
   case 134: return regs64->rdx;
   case 137: return regs64->rbx;
   case 130: return regs64->isf.rsp;
   case 138: return regs64->rbp;
   case 131: return regs64->rsi;
   case 135: return regs64->rdi;
   case 141: return regs64->r8;
   case 140: return regs64->r9;
   case 147: return regs64->r10;
   case 146: return regs64->r11;
   case 145: return regs64->r12;
   case 144: return regs64->r13;
   case 143: return regs64->r14;
   case 142: return regs64->r15;
   case 128: return regs64->isf.trapno;
   case 153: return regs64->isf.err;
   case 132: return regs64->isf.rip;
   case 155: return regs64->isf.cs;
   case 133: return regs64->isf.rflags;
   case 129: return regs64->isf.ss;
   case 151: return regs64->fs;
   case 149: return regs64->gs;
   case 152:
   case 154:
   case 150:
   case 148:

    panic("dtrace: unimplemented x86_64 getreg()");
  }

  panic("dtrace: unhandled x86_64 getreg() constant");
 } else {
  x86_saved_state32_t *regs32 = saved_state32(regs);

  switch (reg) {
   case 139: return regs32->eax;
   case 136: return regs32->ecx;
   case 134: return regs32->edx;
   case 137: return regs32->ebx;
   case 130: return regs32->uesp;
   case 138: return regs32->ebp;
   case 131: return regs32->esi;
   case 135: return regs32->edi;
  }

  panic("dtrace: unhandled i386 getreg() constant");
 }

 return 0;
}
