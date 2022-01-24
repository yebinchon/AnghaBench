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
typedef  int int32_t ;
typedef  int VGfloat ;
typedef  int /*<<< orphan*/  VGPath ;
typedef  int /*<<< orphan*/  VGPaint ;
typedef  int /*<<< orphan*/  VCOS_STATUS_T ;
typedef  int /*<<< orphan*/  GX_PAINT_T ;
typedef  int /*<<< orphan*/  GX_CLIENT_STATE_T ;
typedef  int /*<<< orphan*/  GRAPHICS_RESOURCE_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  VCOS_EINVAL ; 
 int /*<<< orphan*/  VCOS_ENOMEM ; 
 int /*<<< orphan*/  VCOS_SUCCESS ; 
 int /*<<< orphan*/  VG_FILL_PATH ; 
 int /*<<< orphan*/  VG_PAINT_LINEAR_GRADIENT ; 
 int /*<<< orphan*/  VG_PATH_CAPABILITY_ALL ; 
 int /*<<< orphan*/  VG_PATH_DATATYPE_S_32 ; 
 int /*<<< orphan*/  VG_PATH_FORMAT_STANDARD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,double,double,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int*,int,int) ; 

VCOS_STATUS_T FUNC10(GRAPHICS_RESOURCE_HANDLE res,
                                  uint32_t tip_x, uint32_t tip_y,
                                  int32_t w, int32_t h,
                                  GX_PAINT_T *p)
{
   VGfloat gradient[4];
   VGPaint paint = (VGPaint)p;
   VGPath path;
   VCOS_STATUS_T status = VCOS_SUCCESS;

   GX_CLIENT_STATE_T save;
   FUNC1(&save, res);

   if (!paint)
   {
      FUNC2(0);
      status = VCOS_EINVAL;
      goto finish;
   }

   gradient[0] = 0.0; gradient[1] = 0.0;
   gradient[2] = w; gradient[2] = 0.0;

   FUNC8(paint, VG_PAINT_LINEAR_GRADIENT, 4, gradient);
   FUNC7(paint, VG_FILL_PATH);

   path = FUNC3(VG_PATH_FORMAT_STANDARD, VG_PATH_DATATYPE_S_32,
                       1.0, 0.0, 8, 8, VG_PATH_CAPABILITY_ALL);
   if (!path)
   {
      status = VCOS_ENOMEM;
      goto finish;
   }
   VGfloat points[] = {
      (VGfloat)tip_x, (VGfloat)tip_y,
      (VGfloat)tip_x + w, (VGfloat)tip_y + h/2,
      (VGfloat)tip_x + w, (VGfloat)tip_y - h/2,
   };

   FUNC9(path, points, 3, 1);

   FUNC5(path, VG_FILL_PATH);
   FUNC4(path);

   FUNC2(FUNC6()==0);

finish:
   FUNC0(&save);
   return status;
}