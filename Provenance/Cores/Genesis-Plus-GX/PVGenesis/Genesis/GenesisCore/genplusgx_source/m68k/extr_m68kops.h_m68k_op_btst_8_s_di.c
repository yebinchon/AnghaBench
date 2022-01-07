
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int FLAG_Z ;
 int OPER_AY_DI_8 () ;
 int OPER_I_8 () ;

__attribute__((used)) static void m68k_op_btst_8_s_di(void)
{
  uint bit = OPER_I_8() & 7;

  FLAG_Z = OPER_AY_DI_8() & (1 << bit);
}
