
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int speed; } ;
struct TYPE_13__ {unsigned int calculations_use_input_precision; double maxout8; unsigned int sbitlow; double error_gray_16; double error_color_16; scalar_t__ test_gamma_expand16; scalar_t__ test_gamma_alpha_mode; scalar_t__ test_gamma_background; scalar_t__ test_gamma_scale16; scalar_t__ test_gamma_sbit; scalar_t__ test_gamma_transform; scalar_t__ test_gamma_threshold; TYPE_1__ this; } ;
typedef TYPE_2__ png_modifier ;


 int ALPHA_MODE_OFFSET ;
 int PNG_ALPHA_BROKEN ;
 int PNG_ALPHA_STANDARD ;
 int PNG_BACKGROUND_GAMMA_UNIQUE ;
 scalar_t__ fail (TYPE_2__*) ;
 int fflush (int ) ;
 int init_gamma_errors (TYPE_2__*) ;
 int perform_gamma_composition_tests (TYPE_2__*,int,scalar_t__) ;
 int perform_gamma_sbit_tests (TYPE_2__*) ;
 int perform_gamma_scale16_tests (TYPE_2__*) ;
 int perform_gamma_threshold_tests (TYPE_2__*) ;
 int perform_gamma_transform_tests (TYPE_2__*) ;
 int printf (char*,...) ;
 int stderr ;
 int stdout ;
 int summarize_gamma_errors (TYPE_2__*,char*,int,int) ;

__attribute__((used)) static void
perform_gamma_test(png_modifier *pm, int summary)
{


   unsigned int calculations_use_input_precision =
      pm->calculations_use_input_precision;





   if (!pm->this.speed && pm->test_gamma_threshold)
   {
      perform_gamma_threshold_tests(pm);

      if (fail(pm))
         return;
   }


   if (pm->test_gamma_transform)
   {
      if (summary)
      {
         fflush(stderr);
         printf("Gamma correction error summary\n\n");
         printf("The printed value is the maximum error in the pixel values\n");
         printf("calculated by the libpng gamma correction code.  The error\n");
         printf("is calculated as the difference between the output pixel\n");
         printf("value (always an integer) and the ideal value from the\n");
         printf("libpng specification (typically not an integer).\n\n");

         printf("Expect this value to be less than .5 for 8 bit formats,\n");
         printf("less than 1 for formats with fewer than 8 bits and a small\n");
         printf("number (typically less than 5) for the 16 bit formats.\n");
         printf("For performance reasons the value for 16 bit formats\n");
         printf("increases when the image file includes an sBIT chunk.\n");
         fflush(stdout);
      }

      init_gamma_errors(pm);



      if (pm->test_gamma_expand16)
         pm->calculations_use_input_precision = 1;
      perform_gamma_transform_tests(pm);
      if (!calculations_use_input_precision)
         pm->calculations_use_input_precision = 0;

      if (summary)
         summarize_gamma_errors(pm, 0 , 1 , 1 );

      if (fail(pm))
         return;
   }


   if (pm->test_gamma_sbit)
   {
      init_gamma_errors(pm);
      perform_gamma_sbit_tests(pm);

      if (summary)
         summarize_gamma_errors(pm, "sBIT", pm->sbitlow < 8U, 1 );

      if (fail(pm))
         return;
   }
}
