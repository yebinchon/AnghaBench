
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int uint ;
typedef scalar_t__ sint64 ;
typedef scalar_t__ sint32 ;
typedef int sint ;


 scalar_t__ BIT_A (int) ;
 scalar_t__ BIT_B (int) ;
 int CFLAG_CLEAR ;
 int CPU_TYPE ;
 scalar_t__ CPU_TYPE_IS_EC020_PLUS (int ) ;
 int DY ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_Z ;
 int GET_MSB_32 (int) ;
 int MASK_OUT_ABOVE_16 (int) ;
 int MASK_OUT_ABOVE_32 (int) ;
 int NFLAG_32 (int) ;
 int NFLAG_64 (int) ;
 int OPER_I_16 () ;
 int* REG_D ;
 int VFLAG_CLEAR ;
 int m68ki_exception_illegal () ;

void m68k_op_mull_32_d(void)
{
 if(CPU_TYPE_IS_EC020_PLUS(CPU_TYPE))
 {
  uint word2 = OPER_I_16();
  uint src = DY;
  uint dst = REG_D[(word2 >> 12) & 7];
  uint neg = GET_MSB_32(src ^ dst);
  uint src1;
  uint src2;
  uint dst1;
  uint dst2;
  uint r1;
  uint r2;
  uint r3;
  uint r4;
  uint lo;
  uint hi;

  FLAG_C = CFLAG_CLEAR;

  if(BIT_B(word2))
  {
   if(GET_MSB_32(src))
    src = (uint)MASK_OUT_ABOVE_32(-(sint)src);
   if(GET_MSB_32(dst))
    dst = (uint)MASK_OUT_ABOVE_32(-(sint)dst);
  }

  src1 = MASK_OUT_ABOVE_16(src);
  src2 = src>>16;
  dst1 = MASK_OUT_ABOVE_16(dst);
  dst2 = dst>>16;


  r1 = src1 * dst1;
  r2 = src1 * dst2;
  r3 = src2 * dst1;
  r4 = src2 * dst2;

  lo = r1 + (MASK_OUT_ABOVE_16(r2)<<16) + (MASK_OUT_ABOVE_16(r3)<<16);
  hi = r4 + (r2>>16) + (r3>>16) + (((r1>>16) + MASK_OUT_ABOVE_16(r2) + MASK_OUT_ABOVE_16(r3)) >> 16);

  if(BIT_B(word2) && neg)
  {
   hi = (uint)MASK_OUT_ABOVE_32((-(sint)hi) - (lo != 0));
   lo = (uint)MASK_OUT_ABOVE_32(-(sint)lo);
  }

  if(BIT_A(word2))
  {
   REG_D[word2 & 7] = hi;
   REG_D[(word2 >> 12) & 7] = lo;
   FLAG_N = NFLAG_32(hi);
   FLAG_Z = hi | lo;
   FLAG_V = VFLAG_CLEAR;
   return;
  }

  REG_D[(word2 >> 12) & 7] = lo;
  FLAG_N = NFLAG_32(lo);
  FLAG_Z = lo;
  if(BIT_B(word2))
   FLAG_V = (!((GET_MSB_32(lo) && hi == 0xffffffff) || (!GET_MSB_32(lo) && !hi)))<<7;
  else
   FLAG_V = (hi != 0) << 7;
  return;
 }
 m68ki_exception_illegal();


}
