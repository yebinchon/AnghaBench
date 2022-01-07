
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int* regset ;
 int rtime_state ;
 size_t rtime_tmp ;
 int rtime_tmp2 ;

void RTIME_PutByte(UBYTE byte)
{
 switch (rtime_state) {
 case 0:
  rtime_tmp = byte & 0x0f;
  rtime_state = 1;
  break;
 case 1:
  rtime_tmp2 = byte << 4;
  rtime_state = 2;
  break;
 case 2:
  regset[rtime_tmp] = rtime_tmp2 | (byte & 0x0f);
  rtime_state = 0;
  break;
 }
}
