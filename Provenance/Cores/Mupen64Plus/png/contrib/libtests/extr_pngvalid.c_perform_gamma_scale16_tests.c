
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned int ngamma_tests; int* gammas; int use_input_precision_16to8; int interlace_type; } ;
typedef TYPE_1__ png_modifier ;


 scalar_t__ PNG_GAMMA_THRESHOLD ;
 int SBIT_16_TO_8 ;
 scalar_t__ fabs (int) ;
 scalar_t__ fail (TYPE_1__*) ;
 int gamma_transform_test (TYPE_1__*,int,int,int ,int ,int,int,int ,int ,int) ;

__attribute__((used)) static void perform_gamma_scale16_tests(png_modifier *pm)
{
   unsigned int i, j;
   for (i=0; i<pm->ngamma_tests; ++i)
   {
      for (j=0; j<pm->ngamma_tests; ++j)
      {
         if (i != j &&
             fabs(pm->gammas[j]/pm->gammas[i]-1) >= PNG_GAMMA_THRESHOLD)
         {
            gamma_transform_test(pm, 0, 16, 0, pm->interlace_type,
               1/pm->gammas[i], pm->gammas[j], 11,
               pm->use_input_precision_16to8, 1 );

            if (fail(pm))
               return;

            gamma_transform_test(pm, 2, 16, 0, pm->interlace_type,
               1/pm->gammas[i], pm->gammas[j], 11,
               pm->use_input_precision_16to8, 1 );

            if (fail(pm))
               return;

            gamma_transform_test(pm, 4, 16, 0, pm->interlace_type,
               1/pm->gammas[i], pm->gammas[j], 11,
               pm->use_input_precision_16to8, 1 );

            if (fail(pm))
               return;

            gamma_transform_test(pm, 6, 16, 0, pm->interlace_type,
               1/pm->gammas[i], pm->gammas[j], 11,
               pm->use_input_precision_16to8, 1 );

            if (fail(pm))
               return;
         }
      }
   }
}
