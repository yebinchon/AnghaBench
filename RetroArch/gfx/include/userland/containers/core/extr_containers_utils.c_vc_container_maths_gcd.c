
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;



int64_t vc_container_maths_gcd(int64_t a, int64_t b)
{
   while(b != 0)
   {
      int64_t t = b;
      b = a % b;
      a = t;
   }
   return a;
}
