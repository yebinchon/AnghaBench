#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  png_uint_32 ;
typedef  int /*<<< orphan*/  png_const_structrp ;
typedef  int /*<<< orphan*/  png_const_charp ;
typedef  int /*<<< orphan*/  png_const_bytep ;
typedef  TYPE_1__* png_colorspacerp ;
struct TYPE_7__ {int flags; } ;

/* Variables and functions */
 int PNG_COLORSPACE_INVALID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int /* PRIVATE */
FUNC4(png_const_structrp png_ptr, png_colorspacerp colorspace,
    png_const_charp name, png_uint_32 profile_length, png_const_bytep profile,
    int color_type)
{
   if ((colorspace->flags & PNG_COLORSPACE_INVALID) != 0)
      return 0;

   if (FUNC0(png_ptr, colorspace, name, profile_length) != 0 &&
       FUNC1(png_ptr, colorspace, name, profile_length, profile,
           color_type) != 0 &&
       FUNC2(png_ptr, colorspace, name, profile_length,
           profile) != 0)
   {
#     if defined(PNG_sRGB_SUPPORTED) && PNG_sRGB_PROFILE_CHECKS >= 0
         /* If no sRGB support, don't try storing sRGB information */
         png_icc_set_sRGB(png_ptr, colorspace, profile, 0);
#     endif
      return 1;
   }

   /* Failure case */
   return 0;
}