
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;


 int BITS (int ,int,int) ;
 int dtrace_decode_thumb16 (int ) ;
 int dtrace_decode_thumb32 (int ,int ) ;

int dtrace_decode_thumb(uint32_t instr)
{
 uint16_t* pInstr = (uint16_t*) &instr;
 uint16_t hw1 = pInstr[0], hw2 = pInstr[1];

 int size = BITS(hw1,11,0x1F);

 if (size == 0x1D || size == 0x1E || size == 0x1F)
  return dtrace_decode_thumb32(hw1,hw2);
 else
  return dtrace_decode_thumb16(hw1);
}
