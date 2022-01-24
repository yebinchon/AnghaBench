#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  speed; } ;
struct TYPE_13__ {unsigned int calculations_use_input_precision; double maxout8; unsigned int sbitlow; double error_gray_16; double error_color_16; scalar_t__ test_gamma_expand16; scalar_t__ test_gamma_alpha_mode; scalar_t__ test_gamma_background; scalar_t__ test_gamma_scale16; scalar_t__ test_gamma_sbit; scalar_t__ test_gamma_transform; scalar_t__ test_gamma_threshold; TYPE_1__ this; } ;
typedef  TYPE_2__ png_modifier ;

/* Variables and functions */
 int ALPHA_MODE_OFFSET ; 
 int PNG_ALPHA_BROKEN ; 
 int PNG_ALPHA_STANDARD ; 
 int PNG_BACKGROUND_GAMMA_UNIQUE ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*,int,int) ; 

__attribute__((used)) static void
FUNC10(png_modifier *pm, int summary)
{
   /*TODO: remove this*/
   /* Save certain values for the temporary overrides below. */
   unsigned int calculations_use_input_precision =
      pm->calculations_use_input_precision;
#  ifdef PNG_READ_BACKGROUND_SUPPORTED
      double maxout8 = pm->maxout8;
#  endif

   /* First some arbitrary no-transform tests: */
   if (!pm->this.speed && pm->test_gamma_threshold)
   {
      FUNC6(pm);

      if (FUNC0(pm))
         return;
   }

   /* Now some real transforms. */
   if (pm->test_gamma_transform)
   {
      if (summary)
      {
         FUNC1(stderr);
         FUNC8("Gamma correction error summary\n\n");
         FUNC8("The printed value is the maximum error in the pixel values\n");
         FUNC8("calculated by the libpng gamma correction code.  The error\n");
         FUNC8("is calculated as the difference between the output pixel\n");
         FUNC8("value (always an integer) and the ideal value from the\n");
         FUNC8("libpng specification (typically not an integer).\n\n");

         FUNC8("Expect this value to be less than .5 for 8 bit formats,\n");
         FUNC8("less than 1 for formats with fewer than 8 bits and a small\n");
         FUNC8("number (typically less than 5) for the 16 bit formats.\n");
         FUNC8("For performance reasons the value for 16 bit formats\n");
         FUNC8("increases when the image file includes an sBIT chunk.\n");
         FUNC1(stdout);
      }

      FUNC2(pm);
      /*TODO: remove this.  Necessary because the current libpng
       * implementation works in 8 bits:
       */
      if (pm->test_gamma_expand16)
         pm->calculations_use_input_precision = 1;
      FUNC7(pm);
      if (!calculations_use_input_precision)
         pm->calculations_use_input_precision = 0;

      if (summary)
         FUNC9(pm, 0/*who*/, 1/*low bit depth*/, 1/*indexed*/);

      if (FUNC0(pm))
         return;
   }

   /* The sbit tests produce much larger errors: */
   if (pm->test_gamma_sbit)
   {
      FUNC2(pm);
      FUNC4(pm);

      if (summary)
         FUNC9(pm, "sBIT", pm->sbitlow < 8U, 1/*indexed*/);

      if (FUNC0(pm))
         return;
   }

#ifdef DO_16BIT /* Should be READ_16BIT_SUPPORTED */
   if (pm->test_gamma_scale16)
   {
      /* The 16 to 8 bit strip operations: */
      init_gamma_errors(pm);
      perform_gamma_scale16_tests(pm);

      if (summary)
      {
         fflush(stderr);
         printf("\nGamma correction with 16 to 8 bit reduction:\n");
         printf(" 16 bit gray:  %.5f\n", pm->error_gray_16);
         printf(" 16 bit color: %.5f\n", pm->error_color_16);
         fflush(stdout);
      }

      if (fail(pm))
         return;
   }
#endif

#ifdef PNG_READ_BACKGROUND_SUPPORTED
   if (pm->test_gamma_background)
   {
      init_gamma_errors(pm);

      /*TODO: remove this.  Necessary because the current libpng
       * implementation works in 8 bits:
       */
      if (pm->test_gamma_expand16)
      {
         pm->calculations_use_input_precision = 1;
         pm->maxout8 = .499; /* because the 16 bit background is smashed */
      }
      perform_gamma_composition_tests(pm, PNG_BACKGROUND_GAMMA_UNIQUE,
         pm->test_gamma_expand16);
      if (!calculations_use_input_precision)
         pm->calculations_use_input_precision = 0;
      pm->maxout8 = maxout8;

      if (summary)
         summarize_gamma_errors(pm, "background", 1, 0/*indexed*/);

      if (fail(pm))
         return;
   }
#endif

#ifdef PNG_READ_ALPHA_MODE_SUPPORTED
   if (pm->test_gamma_alpha_mode)
   {
      int do_background;

      init_gamma_errors(pm);

      /*TODO: remove this.  Necessary because the current libpng
       * implementation works in 8 bits:
       */
      if (pm->test_gamma_expand16)
         pm->calculations_use_input_precision = 1;
      for (do_background = ALPHA_MODE_OFFSET + PNG_ALPHA_STANDARD;
         do_background <= ALPHA_MODE_OFFSET + PNG_ALPHA_BROKEN && !fail(pm);
         ++do_background)
         perform_gamma_composition_tests(pm, do_background,
            pm->test_gamma_expand16);
      if (!calculations_use_input_precision)
         pm->calculations_use_input_precision = 0;

      if (summary)
         summarize_gamma_errors(pm, "alpha mode", 1, 0/*indexed*/);

      if (fail(pm))
         return;
   }
#endif
}