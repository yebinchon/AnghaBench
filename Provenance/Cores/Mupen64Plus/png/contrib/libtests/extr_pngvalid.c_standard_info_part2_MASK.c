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
struct TYPE_3__ {int pixel_size; int bit_width; int cbRow; int /*<<< orphan*/  h; int /*<<< orphan*/  ps; scalar_t__ filler; } ;
typedef  TYPE_1__ standard_display ;
typedef  int /*<<< orphan*/  png_const_structp ;
typedef  int /*<<< orphan*/  png_const_infop ;
typedef  int png_byte ;

/* Variables and functions */
 int PNG_COLOR_TYPE_GRAY ; 
 int PNG_COLOR_TYPE_RGB ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(standard_display *dp, png_const_structp pp,
    png_const_infop pi, int nImages)
{
   /* Record cbRow now that it can be found. */
   {
      png_byte ct = FUNC3(pp, pi);
      png_byte bd = FUNC2(pp, pi);

      if (bd >= 8 && (ct == PNG_COLOR_TYPE_RGB || ct == PNG_COLOR_TYPE_GRAY) &&
          dp->filler)
          ct |= 4; /* handle filler as faked alpha channel */

      dp->pixel_size = FUNC0(pp, ct, bd);
   }
   dp->bit_width = FUNC4(pp, pi) * dp->pixel_size;
   dp->cbRow = FUNC5(pp, pi);

   /* Validate the rowbytes here again. */
   if (dp->cbRow != (dp->bit_width+7)/8)
      FUNC1(pp, "bad png_get_rowbytes calculation");

   /* Then ensure there is enough space for the output image(s). */
   FUNC6(dp->ps, pp, nImages, dp->cbRow, dp->h);
}