
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int rbmp_shiftsigned(int v, int shift, int bits)
{
   int result;
   int z = bits;

   if (shift < 0)
      v <<= -shift;
   else
      v >>= shift;

   result = v;

   while (z < 8)
   {
      result += v >> z;
      z += bits;
   }
   return result;
}
