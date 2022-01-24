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
typedef  double VGfloat ;
typedef  scalar_t__ VGPaint ;
typedef  int /*<<< orphan*/  GX_PAINT_T ;
typedef  int /*<<< orphan*/  GX_CLIENT_STATE_T ;
typedef  int /*<<< orphan*/  GRAPHICS_RESOURCE_HANDLE ;

/* Variables and functions */
 scalar_t__ VG_INVALID_HANDLE ; 
 int /*<<< orphan*/  VG_PAINT_COLOR_RAMP_STOPS ; 
 int /*<<< orphan*/  VG_PAINT_TYPE ; 
 int /*<<< orphan*/  VG_PAINT_TYPE_LINEAR_GRADIENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,double*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,int,double*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

GX_PAINT_T *FUNC9(GRAPHICS_RESOURCE_HANDLE res,
                               uint32_t start_colour,
                               uint32_t end_colour)
{
   // holds  the two colour stops (offset,r,g,b,a).
   VGfloat fill_stops[10];
   GX_CLIENT_STATE_T save;
   VGPaint paint = VG_INVALID_HANDLE;

   FUNC2(&save, res);

   paint = FUNC5();
   if (!paint)
   {
      FUNC1(&save);
      FUNC4("Could not create paint: vg %d\n", FUNC6());
      FUNC3(0);
      goto finish;
   }

   fill_stops[0] = 0.0;
   FUNC0(start_colour, fill_stops+1);

   fill_stops[5] = 1.0;
   FUNC0(end_colour, fill_stops+6);

   FUNC8(paint, VG_PAINT_TYPE, VG_PAINT_TYPE_LINEAR_GRADIENT);
   FUNC7(paint, VG_PAINT_COLOR_RAMP_STOPS, 5*2, fill_stops);

finish:
   FUNC1(&save);
   return (GX_PAINT_T*)paint;
}