
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cpsr; } ;
typedef TYPE_1__ arm_saved_state32_t ;


 int PSR_CF ;

__attribute__((used)) static void
arm_clear_u32_syscall_error(arm_saved_state32_t *regs)
{
 regs->cpsr &= ~PSR_CF;
}
