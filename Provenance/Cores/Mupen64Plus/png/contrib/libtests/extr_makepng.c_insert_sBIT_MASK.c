#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  png_structp ;
typedef  int /*<<< orphan*/  png_infop ;
struct TYPE_3__ {int red; int green; int blue; int gray; int alpha; } ;
typedef  TYPE_1__ png_color_8 ;
typedef  int /*<<< orphan*/ * png_charpp ;

/* Variables and functions */
 int const PNG_COLOR_MASK_ALPHA ; 
 int const PNG_COLOR_MASK_COLOR ; 
 int const PNG_COLOR_MASK_PALETTE ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC5(png_structp png_ptr, png_infop info_ptr, int nparams,
      png_charpp params)
{
   const int ct = FUNC3(png_ptr, info_ptr);
   const int c = (ct & PNG_COLOR_MASK_COLOR ? 3 : 1) +
      (ct & PNG_COLOR_MASK_ALPHA ? 1 : 0);
   const unsigned int maxval =
      ct & PNG_COLOR_MASK_PALETTE ? 8U : FUNC2(png_ptr, info_ptr);
   png_color_8 sBIT;

   if (nparams != c)
      FUNC1(png_ptr, "sBIT: incorrect parameter count");

   if (ct & PNG_COLOR_MASK_COLOR)
   {
      sBIT.red = FUNC0(png_ptr, params[0], maxval);
      sBIT.green = FUNC0(png_ptr, params[1], maxval);
      sBIT.blue = FUNC0(png_ptr, params[2], maxval);
      sBIT.gray = 42;
   }

   else
   {
      sBIT.red = sBIT.green = sBIT.blue = 42;
      sBIT.gray = FUNC0(png_ptr, params[0], maxval);
   }

   if (ct & PNG_COLOR_MASK_ALPHA)
      sBIT.alpha = FUNC0(png_ptr, params[nparams-1], maxval);

   else
      sBIT.alpha = 42;

   FUNC4(png_ptr, info_ptr, &sBIT);
}