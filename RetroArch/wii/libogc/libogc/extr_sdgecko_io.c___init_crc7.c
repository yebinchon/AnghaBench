
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int s32 ;


 int* _ioCrc7Table ;

__attribute__((used)) static void __init_crc7()
{
 s32 i,j;
 u8 c,crc7;

 crc7 = 0;
 for(i=0;i<256;i++) {
  c = i;
  crc7 = 0;
  for(j=0;j<8;j++) {
   crc7 <<= 1;
   if((crc7^c)&0x80) crc7 ^= 0x09;
   c <<= 1;
  }
  crc7 &= 0x7f;
  _ioCrc7Table[i] = crc7;
 }
}
