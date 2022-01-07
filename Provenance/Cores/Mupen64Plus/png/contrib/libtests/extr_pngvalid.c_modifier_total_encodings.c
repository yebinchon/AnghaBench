
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int ngammas; unsigned int nencodings; int bit_depth; scalar_t__ assume_16_bit_calculations; } ;
typedef TYPE_1__ png_modifier ;



__attribute__((used)) static unsigned int
modifier_total_encodings(const png_modifier *pm)
{
   return 1 +
      pm->ngammas +
      pm->nencodings +
      ((pm->bit_depth == 16 || pm->assume_16_bit_calculations) ?
         pm->nencodings : 0);
}
