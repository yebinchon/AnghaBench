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
typedef  scalar_t__ uint32_t ;
typedef  double VGfloat ;
typedef  int /*<<< orphan*/  VGPath ;
typedef  int /*<<< orphan*/  VGPaint ;
typedef  int /*<<< orphan*/  VCOS_STATUS_T ;
struct TYPE_4__ {scalar_t__ width; scalar_t__ height; } ;
typedef  int /*<<< orphan*/  GX_PAINT_T ;
typedef  int /*<<< orphan*/  GX_CLIENT_STATE_T ;
typedef  TYPE_1__* GRAPHICS_RESOURCE_HANDLE ;

/* Variables and functions */
 scalar_t__ GRAPHICS_RESOURCE_HEIGHT ; 
 scalar_t__ GRAPHICS_RESOURCE_WIDTH ; 
 int /*<<< orphan*/  VCOS_EINVAL ; 
 int /*<<< orphan*/  VCOS_ENOMEM ; 
 int /*<<< orphan*/  VCOS_SUCCESS ; 
 int /*<<< orphan*/  VG_FILL_PATH ; 
 int /*<<< orphan*/  VG_PAINT_LINEAR_GRADIENT ; 
 int /*<<< orphan*/  VG_PATH_CAPABILITY_ALL ; 
 int /*<<< orphan*/  VG_PATH_DATATYPE_S_32 ; 
 int /*<<< orphan*/  VG_PATH_FORMAT_STANDARD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,double,double,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,double*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,double,double,double,double,double,double) ; 

VCOS_STATUS_T FUNC10(GRAPHICS_RESOURCE_HANDLE dest,
                               uint32_t x, uint32_t y,
                               uint32_t width, uint32_t height,
                               uint32_t radius,
                               GX_PAINT_T *p)
{
   /* Define start and end points of gradient, see OpenVG specification,
      section 9.3.3. */
   VGfloat gradient[4] = {0.0, 0.0, 0.0, 0.0};
   VGPaint paint = (VGPaint)p;
   VGPath path;
   GX_CLIENT_STATE_T save;
   VCOS_STATUS_T status = VCOS_SUCCESS;

   if (!paint)
      return VCOS_EINVAL;

   FUNC1(&save, dest);

   if (width == GRAPHICS_RESOURCE_WIDTH)
      width = dest->width;

   if (height == GRAPHICS_RESOURCE_HEIGHT)
      height = dest->height;

   gradient[2] = width;

   FUNC8(paint, VG_PAINT_LINEAR_GRADIENT, 4, gradient);
   FUNC7(paint, VG_FILL_PATH);

   path = FUNC3(VG_PATH_FORMAT_STANDARD, VG_PATH_DATATYPE_S_32,
                       1.0, 0.0, 8, 8, VG_PATH_CAPABILITY_ALL);
   if (!path)
   {
      status = VCOS_ENOMEM;
      goto finish;
   }

   FUNC9(path, (VGfloat)x, (VGfloat)y, (VGfloat)width, (VGfloat)height,
                (VGfloat)radius, (VGfloat)radius);
   FUNC5(path, VG_FILL_PATH);
   FUNC4(path);

   FUNC2(FUNC6() == 0);

finish:
   FUNC0(&save);

   return status;
}