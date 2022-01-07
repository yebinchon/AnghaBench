
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DY ;
 scalar_t__ FLAG_S ;
 int m68ki_exception_privilege_violation () ;
 int m68ki_set_sr (int ) ;

__attribute__((used)) static void m68k_op_move_16_tos_d(void)
{
  if(FLAG_S)
  {
    m68ki_set_sr(DY);
    return;
  }
  m68ki_exception_privilege_violation();
}
