
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DBG_FUNC_END ;
 int DBG_MACH_EXCP_INTR ;
 int KDBG_RELEASE (int) ;
 int MACHDBG_CODE (int ,int ) ;
 int kperf_interrupt () ;

__attribute__((used)) static void
sleh_interrupt_handler_epilogue(void)
{



 KDBG_RELEASE(MACHDBG_CODE(DBG_MACH_EXCP_INTR, 0) | DBG_FUNC_END);
}
