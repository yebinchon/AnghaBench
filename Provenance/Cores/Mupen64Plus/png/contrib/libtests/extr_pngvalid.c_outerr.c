
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double maxout16; int maxout8; scalar_t__ calculations_use_input_precision; } ;
typedef TYPE_1__ png_modifier ;



__attribute__((used)) static double outerr(const png_modifier *pm, int in_depth, int out_depth)
{







   if (out_depth == 2)
      return .73182-.5;

   if (out_depth == 4)
      return .90644-.5;

   if ((pm->calculations_use_input_precision ? in_depth : out_depth) == 16)
      return pm->maxout16;




   else if (out_depth == 16)
      return pm->maxout8 * 257;

   else
      return pm->maxout8;
}
