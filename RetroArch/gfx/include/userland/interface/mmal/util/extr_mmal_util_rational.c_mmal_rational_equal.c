
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_4__ {int num; scalar_t__ den; } ;
typedef TYPE_1__ MMAL_RATIONAL_T ;
typedef int MMAL_BOOL_T ;


 int MMAL_FALSE ;

MMAL_BOOL_T mmal_rational_equal(MMAL_RATIONAL_T a, MMAL_RATIONAL_T b)
{
   if (a.num != b.num && a.num * (int64_t)b.num == 0)
      return MMAL_FALSE;
   return a.num * (int64_t)b.den == b.num * (int64_t)a.den;
}
