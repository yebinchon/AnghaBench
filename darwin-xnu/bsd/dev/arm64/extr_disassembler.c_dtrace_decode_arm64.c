
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int mask; int value; int type; } ;


 int FASTTRAP_T_COMMON ;
 unsigned int NUM_DECODE_ENTRIES ;
 TYPE_1__* arm64_decode_table ;

int dtrace_decode_arm64(uint32_t instr)
{
 unsigned i;

 for (i = 0; i < NUM_DECODE_ENTRIES; i++) {
  if ((instr & arm64_decode_table[i].mask) == arm64_decode_table[i].value) {
   return arm64_decode_table[i].type;
  }
 }

 return FASTTRAP_T_COMMON;
}
