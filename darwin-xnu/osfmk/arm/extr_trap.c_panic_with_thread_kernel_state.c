
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_saved_state {int far; int fsr; int cpsr; int pc; int lr; int sp; int * r; } ;


 int panic_plain (char*,char const*,struct arm_saved_state*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
panic_with_thread_kernel_state(const char *msg, struct arm_saved_state *regs)
{
 panic_plain("%s (saved state:%p)\n"
      "r0:   0x%08x  r1: 0x%08x  r2: 0x%08x  r3: 0x%08x\n"
      "r4:   0x%08x  r5: 0x%08x  r6: 0x%08x  r7: 0x%08x\n"
      "r8:   0x%08x  r9: 0x%08x r10: 0x%08x r11: 0x%08x\n"
      "r12:  0x%08x  sp: 0x%08x  lr: 0x%08x  pc: 0x%08x\n"
      "cpsr: 0x%08x fsr: 0x%08x far: 0x%08x\n",
      msg, regs,
      regs->r[0], regs->r[1], regs->r[2], regs->r[3],
      regs->r[4], regs->r[5], regs->r[6], regs->r[7],
      regs->r[8], regs->r[9], regs->r[10], regs->r[11],
      regs->r[12], regs->sp, regs->lr, regs->pc,
      regs->cpsr, regs->fsr, regs->far);

}
