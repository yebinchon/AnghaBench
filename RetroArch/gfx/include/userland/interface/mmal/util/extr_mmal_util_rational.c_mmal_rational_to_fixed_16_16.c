
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64_t ;
typedef int int32_t ;
struct TYPE_3__ {int den; scalar_t__ num; } ;
typedef TYPE_1__ MMAL_RATIONAL_T ;


 int INT_MAX ;
 int INT_MIN ;

int32_t mmal_rational_to_fixed_16_16(MMAL_RATIONAL_T rational)
{
   int64_t result = (int64_t)rational.num << 16;
   if (rational.den)
      result /= rational.den;

   if (result > INT_MAX)
      result = INT_MAX;
   else if (result < INT_MIN)
      result = INT_MIN;

   return (int32_t)result;
}
