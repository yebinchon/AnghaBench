
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int current_gamma; int encoding_counter; int ngammas; int* gammas; unsigned int nencodings; TYPE_1__* encodings; TYPE_1__* current_encoding; scalar_t__ encoding_ignored; } ;
typedef TYPE_2__ png_modifier ;
struct TYPE_4__ {int gamma; } ;



__attribute__((used)) static void
modifier_set_encoding(png_modifier *pm)
{




   pm->current_gamma = 0;
   pm->current_encoding = 0;
   pm->encoding_ignored = 0;


   if (pm->encoding_counter > 0)
   {



      if (pm->encoding_counter <= pm->ngammas)
         pm->current_gamma = 1/pm->gammas[pm->encoding_counter-1];

      else
      {
         unsigned int i = pm->encoding_counter - pm->ngammas;

         if (i >= pm->nencodings)
         {
            i %= pm->nencodings;
            pm->current_gamma = 1;
         }

         else
            pm->current_gamma = pm->encodings[i].gamma;

         pm->current_encoding = pm->encodings + i;
      }
   }
}
