
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EXCEPTION_TRAP_BASE ;
 int REG_IR ;
 int m68ki_exception_trapN (scalar_t__) ;

__attribute__((used)) static void m68k_op_trap(void)
{

  m68ki_exception_trapN(EXCEPTION_TRAP_BASE + (REG_IR & 0xf));
}
