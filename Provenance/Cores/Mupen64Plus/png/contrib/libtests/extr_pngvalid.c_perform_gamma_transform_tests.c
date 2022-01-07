
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned int ngamma_tests; int* gammas; int use_input_precision; int interlace_type; int test_tRNS; int test_lbg_gamma_transform; } ;
typedef TYPE_1__ png_modifier ;
typedef int png_byte ;


 scalar_t__ fail (TYPE_1__*) ;
 int gamma_transform_test (TYPE_1__*,int ,int ,unsigned int,int ,int,int,int ,int ,int ) ;
 scalar_t__ next_format (int *,int *,unsigned int*,int ,int ) ;

__attribute__((used)) static void perform_gamma_transform_tests(png_modifier *pm)
{
   png_byte colour_type = 0;
   png_byte bit_depth = 0;
   unsigned int palette_number = 0;

   while (next_format(&colour_type, &bit_depth, &palette_number,
                      pm->test_lbg_gamma_transform, pm->test_tRNS))
   {
      unsigned int i, j;

      for (i=0; i<pm->ngamma_tests; ++i) for (j=0; j<pm->ngamma_tests; ++j)
         if (i != j)
         {
            gamma_transform_test(pm, colour_type, bit_depth, palette_number,
               pm->interlace_type, 1/pm->gammas[i], pm->gammas[j], 0 ,
               pm->use_input_precision, 0 );

            if (fail(pm))
               return;
         }
   }
}
