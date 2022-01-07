
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct arm_saved_state {scalar_t__* r; } ;
struct TYPE_2__ {int mach_trap_arg_count; } ;


 int DBG_FUNC_START ;
 int DBG_MACH_EXCP_SC ;
 int KDEBUG_TRACE ;
 int KERNEL_DEBUG_CONSTANT_IST (int ,int,int,int,int,int ,int ) ;
 int MACHDBG_CODE (int ,unsigned int) ;
 TYPE_1__* mach_trap_table ;

void
mach_syscall_trace(
     struct arm_saved_state * regs,
     unsigned int call_number)
{
 int i, argc;
 int kdarg[3] = {0, 0, 0};

 argc = mach_trap_table[call_number].mach_trap_arg_count;

 if (argc > 3)
  argc = 3;

 for (i = 0; i < argc; i++)
  kdarg[i] = (int) regs->r[i];

 KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE,
  MACHDBG_CODE(DBG_MACH_EXCP_SC, (call_number)) | DBG_FUNC_START,
  kdarg[0], kdarg[1], kdarg[2], 0, 0);

}
