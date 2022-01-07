
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 scalar_t__ FLAG_S ;
 int OPER_AY_PI_16 () ;
 int m68ki_exception_privilege_violation () ;
 int m68ki_set_sr (int ) ;

__attribute__((used)) static void m68k_op_move_16_tos_pi(void)
{
  if(FLAG_S)
  {
    uint new_sr = OPER_AY_PI_16();
    m68ki_set_sr(new_sr);
    return;
  }
  m68ki_exception_privilege_violation();
}
