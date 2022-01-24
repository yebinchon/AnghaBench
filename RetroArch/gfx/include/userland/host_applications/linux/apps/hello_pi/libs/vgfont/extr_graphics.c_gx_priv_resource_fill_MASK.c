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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  VGfloat ;
typedef  int /*<<< orphan*/  VCOS_STATUS_T ;
typedef  int /*<<< orphan*/  GRAPHICS_RESOURCE_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  VCOS_SUCCESS ; 
 int /*<<< orphan*/  VG_CLEAR_COLOR ; 
 int /*<<< orphan*/  VG_FALSE ; 
 int /*<<< orphan*/  VG_SCISSORING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

VCOS_STATUS_T FUNC7(GRAPHICS_RESOURCE_HANDLE res,
                               uint32_t x,
                               uint32_t y,
                               uint32_t width,
                               uint32_t height,
                               uint32_t fill_colour )
{
   VGfloat vg_clear_colour[4];

   FUNC1(fill_colour, vg_clear_colour);
   FUNC6(VG_SCISSORING, VG_FALSE);

   FUNC5(VG_CLEAR_COLOR, 4, vg_clear_colour);
   FUNC3(x, y, width, height);

   int err = FUNC4();
   if (err)
   {
      FUNC0("vg error %x filling area", err);
      FUNC2(0);
   }

   return VCOS_SUCCESS;
}