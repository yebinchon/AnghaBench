
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 scalar_t__ BIT_B (int) ;
 int BIT_F (int) ;
 scalar_t__ COND_CS () ;
 int CPU_TYPE ;
 scalar_t__ CPU_TYPE_IS_EC020_PLUS (int ) ;
 int EA_AY_IX_8 () ;
 int EXCEPTION_CHK ;
 int FLAG_C ;
 int FLAG_Z ;
 int MAKE_INT_8 (int) ;
 int OPER_I_16 () ;
 int* REG_DA ;
 int m68ki_exception_illegal () ;
 int m68ki_exception_trap (int ) ;
 int m68ki_read_8 (int) ;

void m68k_op_chk2cmp2_8_ix(void)
{
 if(CPU_TYPE_IS_EC020_PLUS(CPU_TYPE))
 {
  uint word2 = OPER_I_16();
  uint compare = REG_DA[(word2 >> 12) & 15]&0xff;
  uint ea = EA_AY_IX_8();
  uint lower_bound = m68ki_read_8(ea);
  uint upper_bound = m68ki_read_8(ea + 1);

  if(!BIT_F(word2))
   FLAG_C = MAKE_INT_8(compare) - MAKE_INT_8(lower_bound);
  else
   FLAG_C = compare - lower_bound;
  FLAG_Z = !((upper_bound==compare) | (lower_bound==compare));
  if(COND_CS())
  {
   if(BIT_B(word2))
    m68ki_exception_trap(EXCEPTION_CHK);
   return;
  }

  FLAG_C = upper_bound - compare;
  if(COND_CS() && BIT_B(word2))
    m68ki_exception_trap(EXCEPTION_CHK);
  return;
 }
 m68ki_exception_illegal();
}
