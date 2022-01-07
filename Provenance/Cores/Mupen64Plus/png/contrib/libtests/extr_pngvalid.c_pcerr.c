
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double maxpc16; double maxpc8; scalar_t__ calculations_use_input_precision; scalar_t__ assume_16_bit_calculations; } ;
typedef TYPE_1__ png_modifier ;



__attribute__((used)) static double pcerr(const png_modifier *pm, int in_depth, int out_depth)
{



   if (pm->assume_16_bit_calculations ||
      (pm->calculations_use_input_precision ? in_depth : out_depth) == 16)
      return pm->maxpc16 * .01;
   else
      return pm->maxpc8 * .01;
}
