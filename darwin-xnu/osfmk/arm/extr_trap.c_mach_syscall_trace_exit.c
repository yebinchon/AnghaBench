
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DBG_FUNC_END ;
 int DBG_MACH_EXCP_SC ;
 int KDEBUG_TRACE ;
 int KERNEL_DEBUG_CONSTANT_IST (int ,int,unsigned int,int ,int ,int ,int ) ;
 int MACHDBG_CODE (int ,unsigned int) ;

void
mach_syscall_trace_exit(
   unsigned int retval,
   unsigned int call_number)
{
 KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE,
  MACHDBG_CODE(DBG_MACH_EXCP_SC, (call_number)) | DBG_FUNC_END,
  retval, 0, 0, 0, 0);
}
