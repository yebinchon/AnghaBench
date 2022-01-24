#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct display {char* operation; int transforms; int color_type; int /*<<< orphan*/ * write_pp; int /*<<< orphan*/  filter_method; int /*<<< orphan*/  compression_method; int /*<<< orphan*/  interlace_method; int /*<<< orphan*/  bit_depth; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  written_file; } ;
typedef  int /*<<< orphan*/  png_infop ;

/* Variables and functions */
 int /*<<< orphan*/  APP_ERROR ; 
 int PNG_COLOR_MASK_ALPHA ; 
 int /*<<< orphan*/  PNG_LIBPNG_VER_STRING ; 
 int PNG_TRANSFORM_PACKING ; 
 int PNG_TRANSFORM_STRIP_FILLER ; 
 int PNG_TRANSFORM_STRIP_FILLER_BEFORE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct display*) ; 
 int /*<<< orphan*/  display_error ; 
 int /*<<< orphan*/  FUNC2 (struct display*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  display_warning ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,struct display*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  write_function ; 

__attribute__((used)) static void
FUNC8(struct display *dp, png_infop ip, int transforms)
{
   FUNC1(dp); /* safety */

   FUNC0(&dp->written_file);
   dp->operation = "write";
   dp->transforms = transforms;

   dp->write_pp = FUNC3(PNG_LIBPNG_VER_STRING, dp,
      display_error, display_warning);

   if (dp->write_pp == NULL)
      FUNC2(dp, APP_ERROR, "failed to create write png_struct");

   FUNC6(dp->write_pp, &dp->written_file, write_function,
      NULL/*flush*/);

#  ifdef PNG_SET_USER_LIMITS_SUPPORTED
      /* Remove the user limits, if any */
      png_set_user_limits(dp->write_pp, 0x7fffffff, 0x7fffffff);
#  endif

   /* Certain transforms require the png_info to be zapped to allow the
    * transform to work correctly.
    */
   if (transforms & (PNG_TRANSFORM_PACKING|
                     PNG_TRANSFORM_STRIP_FILLER|
                     PNG_TRANSFORM_STRIP_FILLER_BEFORE))
   {
      int ct = dp->color_type;

      if (transforms & (PNG_TRANSFORM_STRIP_FILLER|
                        PNG_TRANSFORM_STRIP_FILLER_BEFORE))
         ct &= ~PNG_COLOR_MASK_ALPHA;

      FUNC4(dp->write_pp, ip, dp->width, dp->height, dp->bit_depth, ct,
         dp->interlace_method, dp->compression_method, dp->filter_method);
   }

   FUNC7(dp->write_pp, ip, transforms, NULL/*params*/);

   /* Clean it on the way out - if control returns to the caller then the
    * written_file contains the required data.
    */
   FUNC1(dp);
}