
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int num; } ;
typedef TYPE_1__ MMAL_RATIONAL_T ;


 TYPE_1__ mmal_rational_add (TYPE_1__,TYPE_1__) ;

MMAL_RATIONAL_T mmal_rational_subtract(MMAL_RATIONAL_T a, MMAL_RATIONAL_T b)
{
   b.num = -b.num;
   return mmal_rational_add(a, b);
}
