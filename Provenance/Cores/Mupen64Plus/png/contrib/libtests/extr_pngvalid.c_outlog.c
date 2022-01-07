
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int log8; scalar_t__ log16; scalar_t__ calculations_use_input_precision; } ;
typedef TYPE_1__ png_modifier ;



__attribute__((used)) static double outlog(const png_modifier *pm, int in_depth, int out_depth)
{



   if (out_depth <= 8)
   {
      if (pm->log8 == 0)
         return 256;

      if (out_depth < 8)
         return pm->log8 / 255 * ((1<<out_depth)-1);

      return pm->log8;
   }

   if ((pm->calculations_use_input_precision ? in_depth : out_depth) == 16)
   {
      if (pm->log16 == 0)
         return 65536;

      return pm->log16;
   }




   if (pm->log8 == 0)
      return 65536;

   return pm->log8 * 257;
}
