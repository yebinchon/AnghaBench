
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int EA_AY_AI_32 () ;
 int m68ki_push_32 (int ) ;

__attribute__((used)) static void m68k_op_pea_32_ai(void)
{
  uint ea = EA_AY_AI_32();

  m68ki_push_32(ea);
}
