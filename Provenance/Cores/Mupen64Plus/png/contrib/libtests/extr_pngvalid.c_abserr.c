
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double maxabs16; double maxabs8; scalar_t__ calculations_use_input_precision; scalar_t__ assume_16_bit_calculations; } ;
typedef TYPE_1__ png_modifier ;



__attribute__((used)) static double abserr(const png_modifier *pm, int in_depth, int out_depth)
{



   if (pm->assume_16_bit_calculations ||
      (pm->calculations_use_input_precision ? in_depth : out_depth) == 16)
      return pm->maxabs16;
   else
      return pm->maxabs8;
}
