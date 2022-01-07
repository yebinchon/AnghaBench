
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ss; int cs; int rip; int rflags; int rsp; } ;
struct TYPE_6__ {TYPE_1__ isf; int r15; int r14; int r13; int r12; int r11; int r10; int r9; int r8; int rdi; int rsi; int rbp; int rdx; int rcx; int rbx; int rax; } ;
struct TYPE_7__ {TYPE_2__ ss_64; } ;
typedef TYPE_3__ x86_saved_state_t ;
typedef int thread_t ;


 TYPE_3__* get_user_regs (int ) ;
 int paniclog_append_noflush (char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

void
print_threads_registers(thread_t thread)
{
 x86_saved_state_t *savestate;

 savestate = get_user_regs(thread);
 paniclog_append_noflush(
  "\nRAX: 0x%016llx, RBX: 0x%016llx, RCX: 0x%016llx, RDX: 0x%016llx\n"
     "RSP: 0x%016llx, RBP: 0x%016llx, RSI: 0x%016llx, RDI: 0x%016llx\n"
     "R8:  0x%016llx, R9:  0x%016llx, R10: 0x%016llx, R11: 0x%016llx\n"
  "R12: 0x%016llx, R13: 0x%016llx, R14: 0x%016llx, R15: 0x%016llx\n"
  "RFL: 0x%016llx, RIP: 0x%016llx, CS:  0x%016llx, SS:  0x%016llx\n\n",
  savestate->ss_64.rax, savestate->ss_64.rbx, savestate->ss_64.rcx, savestate->ss_64.rdx,
  savestate->ss_64.isf.rsp, savestate->ss_64.rbp, savestate->ss_64.rsi, savestate->ss_64.rdi,
  savestate->ss_64.r8, savestate->ss_64.r9, savestate->ss_64.r10, savestate->ss_64.r11,
  savestate->ss_64.r12, savestate->ss_64.r13, savestate->ss_64.r14, savestate->ss_64.r15,
  savestate->ss_64.isf.rflags, savestate->ss_64.isf.rip, savestate->ss_64.isf.cs,
  savestate->ss_64.isf.ss);
}
