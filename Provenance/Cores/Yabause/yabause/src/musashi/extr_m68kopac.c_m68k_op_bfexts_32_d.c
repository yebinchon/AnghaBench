
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint64 ;
typedef int uint ;


 scalar_t__ BIT_5 (int) ;
 scalar_t__ BIT_B (int) ;
 int CFLAG_CLEAR ;
 int CPU_TYPE ;
 scalar_t__ CPU_TYPE_IS_EC020_PLUS (int ) ;
 void* DY ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 void* FLAG_Z ;
 int MAKE_INT_32 (void*) ;
 int NFLAG_32 (void*) ;
 int OPER_I_16 () ;
 int* REG_D ;
 void* ROL_32 (void*,int) ;
 int VFLAG_CLEAR ;
 int m68ki_exception_illegal () ;

void m68k_op_bfexts_32_d(void)
{
 if(CPU_TYPE_IS_EC020_PLUS(CPU_TYPE))
 {
  uint word2 = OPER_I_16();
  uint offset = (word2>>6)&31;
  uint width = word2;
  uint64 data = DY;


  if(BIT_B(word2))
   offset = REG_D[offset&7];
  if(BIT_5(word2))
   width = REG_D[width&7];

  offset &= 31;
  width = ((width-1) & 31) + 1;

  data = ROL_32(data, offset);
  FLAG_N = NFLAG_32(data);
  data = MAKE_INT_32(data) >> (32 - width);

  FLAG_Z = data;
  FLAG_V = VFLAG_CLEAR;
  FLAG_C = CFLAG_CLEAR;

  REG_D[(word2>>12)&7] = data;

  return;
 }
 m68ki_exception_illegal();
}
