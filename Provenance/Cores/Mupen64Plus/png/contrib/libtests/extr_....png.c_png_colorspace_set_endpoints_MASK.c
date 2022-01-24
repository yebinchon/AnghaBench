#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  png_xy ;
typedef  int /*<<< orphan*/  png_const_structrp ;
typedef  TYPE_1__* png_colorspacerp ;
typedef  int /*<<< orphan*/  png_XYZ ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  PNG_COLORSPACE_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

int /* PRIVATE */
FUNC4(png_const_structrp png_ptr,
    png_colorspacerp colorspace, const png_XYZ *XYZ_in, int preferred)
{
   png_XYZ XYZ = *XYZ_in;
   png_xy xy;

   switch (FUNC1(&xy, &XYZ))
   {
      case 0:
         return FUNC2(png_ptr, colorspace, &xy, &XYZ,
             preferred);

      case 1:
         /* End points are invalid. */
         colorspace->flags |= PNG_COLORSPACE_INVALID;
         FUNC0(png_ptr, "invalid end points");
         break;

      default:
         colorspace->flags |= PNG_COLORSPACE_INVALID;
         FUNC3(png_ptr, "internal error checking chromaticities");
   }

   return 0; /* failed */
}