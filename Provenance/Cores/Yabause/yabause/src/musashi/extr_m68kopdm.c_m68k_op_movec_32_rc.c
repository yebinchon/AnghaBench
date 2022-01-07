
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int CPU_TYPE ;
 scalar_t__ CPU_TYPE_IS_010_PLUS (int ) ;
 int CPU_TYPE_IS_EC020_PLUS (int ) ;
 int FLAG_M ;
 scalar_t__ FLAG_S ;
 int OPER_I_16 () ;
 int REG_CAAR ;
 int REG_CACR ;
 int* REG_DA ;
 int REG_DFC ;
 int REG_ISP ;
 int REG_MSP ;
 int REG_SFC ;
 int REG_SP ;
 int REG_USP ;
 int REG_VBR ;
 int m68ki_exception_illegal () ;
 int m68ki_exception_privilege_violation () ;
 int m68ki_trace_t0 () ;

void m68k_op_movec_32_rc(void)
{
 if(CPU_TYPE_IS_010_PLUS(CPU_TYPE))
 {
  if(FLAG_S)
  {
   uint word2 = OPER_I_16();

   m68ki_trace_t0();
   switch (word2 & 0xfff)
   {
   case 0x000:
    REG_SFC = REG_DA[(word2 >> 12) & 15] & 7;
    return;
   case 0x001:
    REG_DFC = REG_DA[(word2 >> 12) & 15] & 7;
    return;
   case 0x002:
    if(CPU_TYPE_IS_EC020_PLUS(CPU_TYPE))
    {
     REG_CACR = REG_DA[(word2 >> 12) & 15];
     return;
    }
    m68ki_exception_illegal();
    return;
   case 0x800:
    REG_USP = REG_DA[(word2 >> 12) & 15];
    return;
   case 0x801:
    REG_VBR = REG_DA[(word2 >> 12) & 15];
    return;
   case 0x802:
    if(CPU_TYPE_IS_EC020_PLUS(CPU_TYPE))
    {
     REG_CAAR = REG_DA[(word2 >> 12) & 15];
     return;
    }
    m68ki_exception_illegal();
    return;
   case 0x803:
    if(CPU_TYPE_IS_EC020_PLUS(CPU_TYPE))
    {

     if(!FLAG_M)
     {
      REG_MSP = REG_DA[(word2 >> 12) & 15];
      return;
     }
     REG_SP = REG_DA[(word2 >> 12) & 15];
     return;
    }
    m68ki_exception_illegal();
    return;
   case 0x804:
    if(CPU_TYPE_IS_EC020_PLUS(CPU_TYPE))
    {
     if(!FLAG_M)
     {
      REG_SP = REG_DA[(word2 >> 12) & 15];
      return;
     }
     REG_ISP = REG_DA[(word2 >> 12) & 15];
     return;
    }
    m68ki_exception_illegal();
    return;
   default:
    m68ki_exception_illegal();
    return;
   }
  }
  m68ki_exception_privilege_violation();
  return;
 }
 m68ki_exception_illegal();
}
