
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_5__ {int den; int num; } ;
typedef TYPE_1__ MMAL_RATIONAL_T ;


 int gcd (int,int) ;

MMAL_RATIONAL_T mmal_rational_add(MMAL_RATIONAL_T a, MMAL_RATIONAL_T b)
{
   MMAL_RATIONAL_T result;
   int32_t g = gcd(a.den, b.den);
   a.den /= g;
   a.num = a.num * (b.den / g) + b.num * a.den;
   g = gcd(a.num, g);
   a.num /= g;
   a.den *= b.den / g;

   result.num = a.num;
   result.den = a.den;
   return result;
}
