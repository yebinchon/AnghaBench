
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AY ;
 scalar_t__ FLAG_S ;
 int REG_USP ;
 int m68ki_exception_privilege_violation () ;

__attribute__((used)) static void m68k_op_move_32_tou(void)
{
  if(FLAG_S)
  {
    REG_USP = AY;
    return;
  }
  m68ki_exception_privilege_violation();
}
