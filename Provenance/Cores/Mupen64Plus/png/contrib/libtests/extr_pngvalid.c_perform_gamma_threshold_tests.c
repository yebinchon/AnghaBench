
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int interlace_type; int test_tRNS; int test_lbg_gamma_threshold; } ;
typedef TYPE_1__ png_modifier ;
typedef int png_byte ;


 scalar_t__ fail (TYPE_1__*) ;
 int gamma_threshold_test (TYPE_1__*,int ,int ,int ,double,double) ;
 scalar_t__ next_format (int *,int *,unsigned int*,int ,int ) ;

__attribute__((used)) static void
perform_gamma_threshold_tests(png_modifier *pm)
{
   png_byte colour_type = 0;
   png_byte bit_depth = 0;
   unsigned int palette_number = 0;
   while (next_format(&colour_type, &bit_depth, &palette_number,
                      pm->test_lbg_gamma_threshold, pm->test_tRNS))
      if (palette_number < 2)
   {
      double test_gamma = 1.0;
      while (test_gamma >= .4)
      {



         gamma_threshold_test(pm, colour_type, bit_depth, pm->interlace_type,
            test_gamma, 1/test_gamma);
         test_gamma *= .95;
      }


      gamma_threshold_test(pm, colour_type, bit_depth, pm->interlace_type,
          .45455, 2.2);

      if (fail(pm))
         return;
   }
}
