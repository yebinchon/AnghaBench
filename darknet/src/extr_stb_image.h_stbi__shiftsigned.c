
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STBI_ASSERT (int) ;

__attribute__((used)) static int stbi__shiftsigned(int v, int shift, int bits)
{
   static unsigned int mul_table[9] = {
      0,
      0xff , 0x55 , 0x49 , 0x11 ,
      0x21 , 0x41 , 0x81 , 0x01 ,
   };
   static unsigned int shift_table[9] = {
      0, 0,0,1,0,2,4,6,0,
   };
   if (shift < 0)
      v <<= -shift;
   else
      v >>= shift;
   STBI_ASSERT(v >= 0 && v < 256);
   v >>= (8-bits);
   STBI_ASSERT(bits >= 0 && bits <= 8);
   return (int) ((unsigned) v * mul_table[bits]) >> shift_table[bits];
}
