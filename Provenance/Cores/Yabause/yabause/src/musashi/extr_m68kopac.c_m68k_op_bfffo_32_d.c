
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;
typedef int uint ;


 scalar_t__ BIT_5 (int) ;
 scalar_t__ BIT_B (int) ;
 int CFLAG_CLEAR ;
 int CPU_TYPE ;
 scalar_t__ CPU_TYPE_IS_EC020_PLUS (int ) ;
 int DY ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_Z ;
 int NFLAG_32 (int) ;
 int OPER_I_16 () ;
 int* REG_D ;
 int ROL_32 (int,int) ;
 int VFLAG_CLEAR ;
 int m68ki_exception_illegal () ;

void m68k_op_bfffo_32_d(void)
{
 if(CPU_TYPE_IS_EC020_PLUS(CPU_TYPE))
 {
  uint word2 = OPER_I_16();
  uint offset = (word2>>6)&31;
  uint width = word2;
  uint64 data = DY;
  uint bit;


  if(BIT_B(word2))
   offset = REG_D[offset&7];
  if(BIT_5(word2))
   width = REG_D[width&7];

  offset &= 31;
  width = ((width-1) & 31) + 1;

  data = ROL_32(data, offset);
  FLAG_N = NFLAG_32(data);
  data >>= 32 - width;

  FLAG_Z = data;
  FLAG_V = VFLAG_CLEAR;
  FLAG_C = CFLAG_CLEAR;

  for(bit = 1<<(width-1);bit && !(data & bit);bit>>= 1)
   offset++;

  REG_D[(word2>>12)&7] = offset;

  return;
 }
 m68ki_exception_illegal();
}
