#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned int ngamma_tests; int* gammas; int /*<<< orphan*/  use_input_precision_16to8; int /*<<< orphan*/  interlace_type; } ;
typedef  TYPE_1__ png_modifier ;

/* Variables and functions */
 scalar_t__ PNG_GAMMA_THRESHOLD ; 
 int /*<<< orphan*/  SBIT_16_TO_8 ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(png_modifier *pm)
{
#  ifndef PNG_MAX_GAMMA_8
#     define PNG_MAX_GAMMA_8 11
#  endif
#  if defined PNG_MAX_GAMMA_8 || PNG_LIBPNG_VER < 10700
#     define SBIT_16_TO_8 PNG_MAX_GAMMA_8
#  else
#     define SBIT_16_TO_8 16
#  endif
   /* Include the alpha cases here. Note that sbit matches the internal value
    * used by the library - otherwise we will get spurious errors from the
    * internal sbit style approximation.
    *
    * The threshold test is here because otherwise the 16 to 8 conversion will
    * proceed *without* gamma correction, and the tests above will fail (but not
    * by much) - this could be fixed, it only appears with the -g option.
    */
   unsigned int i, j;
   for (i=0; i<pm->ngamma_tests; ++i)
   {
      for (j=0; j<pm->ngamma_tests; ++j)
      {
         if (i != j &&
             FUNC0(pm->gammas[j]/pm->gammas[i]-1) >= PNG_GAMMA_THRESHOLD)
         {
            FUNC2(pm, 0, 16, 0, pm->interlace_type,
               1/pm->gammas[i], pm->gammas[j], SBIT_16_TO_8,
               pm->use_input_precision_16to8, 1 /*scale16*/);

            if (FUNC1(pm))
               return;

            FUNC2(pm, 2, 16, 0, pm->interlace_type,
               1/pm->gammas[i], pm->gammas[j], SBIT_16_TO_8,
               pm->use_input_precision_16to8, 1 /*scale16*/);

            if (FUNC1(pm))
               return;

            FUNC2(pm, 4, 16, 0, pm->interlace_type,
               1/pm->gammas[i], pm->gammas[j], SBIT_16_TO_8,
               pm->use_input_precision_16to8, 1 /*scale16*/);

            if (FUNC1(pm))
               return;

            FUNC2(pm, 6, 16, 0, pm->interlace_type,
               1/pm->gammas[i], pm->gammas[j], SBIT_16_TO_8,
               pm->use_input_precision_16to8, 1 /*scale16*/);

            if (FUNC1(pm))
               return;
         }
      }
   }
}