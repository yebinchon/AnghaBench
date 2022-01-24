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
struct TYPE_5__ {unsigned int ngamma_tests; int* gammas; int /*<<< orphan*/  use_input_precision; int /*<<< orphan*/  interlace_type; int /*<<< orphan*/  test_tRNS; int /*<<< orphan*/  test_lbg_gamma_transform; } ;
typedef  TYPE_1__ png_modifier ;
typedef  int /*<<< orphan*/  png_byte ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(png_modifier *pm)
{
   png_byte colour_type = 0;
   png_byte bit_depth = 0;
   unsigned int palette_number = 0;

   while (FUNC2(&colour_type, &bit_depth, &palette_number,
                      pm->test_lbg_gamma_transform, pm->test_tRNS))
   {
      unsigned int i, j;

      for (i=0; i<pm->ngamma_tests; ++i) for (j=0; j<pm->ngamma_tests; ++j)
         if (i != j)
         {
            FUNC1(pm, colour_type, bit_depth, palette_number,
               pm->interlace_type, 1/pm->gammas[i], pm->gammas[j], 0/*sBIT*/,
               pm->use_input_precision, 0 /*do not scale16*/);

            if (FUNC0(pm))
               return;
         }
   }
}