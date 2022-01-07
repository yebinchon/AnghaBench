
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_4__ {int member_1; int member_0; } ;
typedef TYPE_1__ MMAL_RATIONAL_T ;


 int Q16_ONE ;
 int mmal_rational_simplify (TYPE_1__*) ;

MMAL_RATIONAL_T mmal_rational_from_fixed_16_16(int32_t fixed)
{
   MMAL_RATIONAL_T result = { fixed, Q16_ONE };
   mmal_rational_simplify(&result);
   return result;
}
