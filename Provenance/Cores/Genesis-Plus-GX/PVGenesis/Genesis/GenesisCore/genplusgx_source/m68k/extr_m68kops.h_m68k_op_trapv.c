
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ COND_VC () ;
 int EXCEPTION_TRAPV ;
 int m68ki_exception_trap (int ) ;

__attribute__((used)) static void m68k_op_trapv(void)
{
  if(COND_VC())
  {
    return;
  }
  m68ki_exception_trap(EXCEPTION_TRAPV);
}
