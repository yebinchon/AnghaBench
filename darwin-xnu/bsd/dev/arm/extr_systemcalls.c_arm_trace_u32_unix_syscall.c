
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int boolean_t ;
struct TYPE_3__ {scalar_t__ save_r12; int save_r3; int save_r2; int save_r1; int save_r0; int save_r4; } ;
typedef TYPE_1__ arm_saved_state32_t ;


 int BSDDBG_CODE (int ,int) ;
 int DBG_BSD_EXCP_SC ;
 int DBG_FUNC_START ;
 int KDEBUG_TRACE ;
 int KERNEL_DEBUG_CONSTANT_IST (int ,int,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
arm_trace_u32_unix_syscall(int code, arm_saved_state32_t *regs)
{
 boolean_t indirect = (regs->save_r12 == 0);
 if (indirect)
  KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE,
   BSDDBG_CODE(DBG_BSD_EXCP_SC, code) | DBG_FUNC_START,
   regs->save_r1, regs->save_r2, regs->save_r3, regs->save_r4, 0);
 else
  KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE,
   BSDDBG_CODE(DBG_BSD_EXCP_SC, code) | DBG_FUNC_START,
   regs->save_r0, regs->save_r1, regs->save_r2, regs->save_r3, 0);
}
