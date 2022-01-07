
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;



int
dtrace_instr_size(uint32_t instr, int thumb_mode)
{
 if (thumb_mode) {
  uint16_t instr16 = *(uint16_t*) &instr;
  if (((instr16 >> 11) & 0x1F) > 0x1C)
   return 4;
  else
   return 2;
 } else {
  return 4;
 }
}
