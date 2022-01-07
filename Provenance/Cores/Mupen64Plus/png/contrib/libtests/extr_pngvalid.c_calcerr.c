
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double maxcalc16; double maxcalcG; double maxcalc8; scalar_t__ assume_16_bit_calculations; scalar_t__ calculations_use_input_precision; } ;
typedef TYPE_1__ png_modifier ;



__attribute__((used)) static double calcerr(const png_modifier *pm, int in_depth, int out_depth)
{



   if ((pm->calculations_use_input_precision ? in_depth : out_depth) == 16)
      return pm->maxcalc16;
   else if (pm->assume_16_bit_calculations)
      return pm->maxcalcG;
   else
      return pm->maxcalc8;
}
