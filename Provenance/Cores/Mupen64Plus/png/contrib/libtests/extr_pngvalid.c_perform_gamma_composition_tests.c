
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned int ngamma_tests; int* gammas; int use_input_precision; int interlace_type; int test_tRNS; int test_lbg_gamma_composition; } ;
typedef TYPE_1__ png_modifier ;
typedef int png_byte ;


 int PNG_COLOR_MASK_ALPHA ;
 scalar_t__ fail (TYPE_1__*) ;
 int gamma_composition_test (TYPE_1__*,int,int,unsigned int,int ,int,int,int ,int,int) ;
 scalar_t__ next_format (int*,int*,unsigned int*,int ,int ) ;

__attribute__((used)) static void
perform_gamma_composition_tests(png_modifier *pm, int do_background,
   int expand_16)
{
   png_byte colour_type = 0;
   png_byte bit_depth = 0;
   unsigned int palette_number = 0;







   while (next_format(&colour_type, &bit_depth, &palette_number,
                      pm->test_lbg_gamma_composition, pm->test_tRNS))
      if ((colour_type & PNG_COLOR_MASK_ALPHA) != 0




          || (colour_type != 3 && palette_number != 0))
   {
      unsigned int i, j;


      for (i=0; i<pm->ngamma_tests; ++i) for (j=0; j<pm->ngamma_tests; ++j)
      {
         gamma_composition_test(pm, colour_type, bit_depth, palette_number,
            pm->interlace_type, 1/pm->gammas[i], pm->gammas[j],
            pm->use_input_precision, do_background, expand_16);

         if (fail(pm))
            return;
      }
   }
}
