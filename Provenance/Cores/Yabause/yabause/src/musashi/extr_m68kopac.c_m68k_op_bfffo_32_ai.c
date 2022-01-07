
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int sint ;


 scalar_t__ BIT_5 (int) ;
 scalar_t__ BIT_B (int) ;
 int CFLAG_CLEAR ;
 int CPU_TYPE ;
 scalar_t__ CPU_TYPE_IS_EC020_PLUS (int ) ;
 int EA_AY_AI_8 () ;
 int FLAG_C ;
 int FLAG_N ;
 int FLAG_V ;
 int FLAG_Z ;
 int MAKE_INT_32 (int) ;
 int MASK_OUT_ABOVE_32 (int) ;
 int NFLAG_32 (int) ;
 int OPER_I_16 () ;
 int* REG_D ;
 int VFLAG_CLEAR ;
 int m68ki_exception_illegal () ;
 int m68ki_read_32 (int) ;
 int m68ki_read_8 (int) ;

void m68k_op_bfffo_32_ai(void)
{
 if(CPU_TYPE_IS_EC020_PLUS(CPU_TYPE))
 {
  uint word2 = OPER_I_16();
  sint offset = (word2>>6)&31;
  sint local_offset;
  uint width = word2;
  uint data;
  uint bit;
  uint ea = EA_AY_AI_8();


  if(BIT_B(word2))
   offset = MAKE_INT_32(REG_D[offset&7]);
  if(BIT_5(word2))
   width = REG_D[width&7];


  ea += offset / 8;
  local_offset = offset % 8;
  if(local_offset < 0)
  {
   local_offset += 8;
   ea--;
  }
  width = ((width-1) & 31) + 1;

  data = m68ki_read_32(ea);
  data = MASK_OUT_ABOVE_32(data<<local_offset);

  if((local_offset+width) > 32)
   data |= (m68ki_read_8(ea+4) << local_offset) >> 8;

  FLAG_N = NFLAG_32(data);
  data >>= (32 - width);

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
