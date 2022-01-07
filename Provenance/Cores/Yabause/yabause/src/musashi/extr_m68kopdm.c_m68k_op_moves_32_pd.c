
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 scalar_t__ BIT_B (int) ;
 int CPU_TYPE ;
 scalar_t__ CPU_TYPE_IS_010_PLUS (int ) ;
 scalar_t__ CPU_TYPE_IS_020_VARIANT (int ) ;
 int EA_AY_PD_32 () ;
 scalar_t__ FLAG_S ;
 int OPER_I_16 () ;
 int * REG_DA ;
 int REG_DFC ;
 int REG_SFC ;
 int USE_CYCLES (int) ;
 int m68ki_exception_illegal () ;
 int m68ki_exception_privilege_violation () ;
 int m68ki_read_32_fc (int,int ) ;
 int m68ki_trace_t0 () ;
 int m68ki_write_32_fc (int,int ,int ) ;

void m68k_op_moves_32_pd(void)
{
 if(CPU_TYPE_IS_010_PLUS(CPU_TYPE))
 {
  if(FLAG_S)
  {
   uint word2 = OPER_I_16();
   uint ea = EA_AY_PD_32();

   m68ki_trace_t0();
   if(BIT_B(word2))
   {
    m68ki_write_32_fc(ea, REG_DFC, REG_DA[(word2 >> 12) & 15]);
    if(CPU_TYPE_IS_020_VARIANT(CPU_TYPE))
     USE_CYCLES(2);
    return;
   }

   REG_DA[(word2 >> 12) & 15] = m68ki_read_32_fc(ea, REG_SFC);
   if(CPU_TYPE_IS_020_VARIANT(CPU_TYPE))
    USE_CYCLES(2);
   return;
  }
  m68ki_exception_privilege_violation();
  return;
 }
 m68ki_exception_illegal();
}
