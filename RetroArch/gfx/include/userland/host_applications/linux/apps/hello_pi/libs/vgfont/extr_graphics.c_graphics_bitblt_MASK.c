#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int int32_t ;
typedef  double VGfloat ;
typedef  scalar_t__ VGPaint ;
typedef  scalar_t__ VGImage ;
struct TYPE_6__ {scalar_t__ pixmap; } ;
struct TYPE_7__ {scalar_t__ type; scalar_t__ const width; scalar_t__ const height; double alpha; TYPE_1__ u; } ;
typedef  int /*<<< orphan*/  GX_CLIENT_STATE_T ;
typedef  TYPE_2__* GRAPHICS_RESOURCE_HANDLE ;

/* Variables and functions */
 scalar_t__ const GRAPHICS_RESOURCE_HEIGHT ; 
 scalar_t__ const GRAPHICS_RESOURCE_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ GX_PBUFFER ; 
 int /*<<< orphan*/  VG_DRAW_IMAGE_MULTIPLY ; 
 int VG_FILL_PATH ; 
 int /*<<< orphan*/  VG_IMAGE_MODE ; 
 scalar_t__ VG_INVALID_HANDLE ; 
 int /*<<< orphan*/  VG_MATRIX_IMAGE_USER_TO_SURFACE ; 
 int /*<<< orphan*/  VG_MATRIX_MODE ; 
 int /*<<< orphan*/  VG_PAINT_COLOR ; 
 int VG_STROKE_PATH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__ const,scalar_t__ const,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (double*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (double*) ; 
 int /*<<< orphan*/  FUNC13 (double,double) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int /*<<< orphan*/ ,int,double*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (double,double) ; 

int32_t FUNC18( const GRAPHICS_RESOURCE_HANDLE src,
                         const uint32_t x, // offset within source
                         const uint32_t y, // offset within source
                         const uint32_t width,
                         const uint32_t height,
                         GRAPHICS_RESOURCE_HANDLE dest,
                         const uint32_t x_pos,
                         const uint32_t y_pos )
{
   int rc = -1;
   VGfloat old[9];
   uint32_t w, h;
   VGPaint paint = VG_INVALID_HANDLE;
   GX_CLIENT_STATE_T save;
   int is_child = 0;
   VGImage img = VG_INVALID_HANDLE;

   FUNC2(&save, dest);

   if (src->type != GX_PBUFFER)
   {
      FUNC3(0);
      goto finish;
   }

   // create a child image that contains just the part wanted
   w = width == GRAPHICS_RESOURCE_WIDTH ? src->width : width;
   h = height == GRAPHICS_RESOURCE_HEIGHT ? src->height : height;

   if (x==0 && y==0 &&
       w == src->width &&
       h == src->height)
   {
      img = src->u.pixmap;
   }
   else
   {
      is_child = 1;
      img = FUNC4(src->u.pixmap, x, y, w, h);
      if (img == VG_INVALID_HANDLE)
      {
         FUNC3(0);
         goto finish;
      }
   }

   FUNC3(FUNC9()==0);

   FUNC16(VG_MATRIX_MODE, VG_MATRIX_IMAGE_USER_TO_SURFACE);
   FUNC10(old);
   FUNC11();
   FUNC17((VGfloat)x_pos, (VGfloat)(dest->height-y_pos));
   FUNC13(1.0, -1.0);

   // Do we have a translucency going on?
   if (src->alpha != 1.0)
   {
      VGfloat colour[4] = {1.0,1.0,1.0,src->alpha};
      paint = FUNC5();

      FUNC15(paint, VG_PAINT_COLOR, 4, colour);
      FUNC16(VG_IMAGE_MODE, VG_DRAW_IMAGE_MULTIPLY);
      FUNC14(paint, VG_STROKE_PATH | VG_FILL_PATH);
   }
   FUNC3(FUNC9()==0);

   FUNC8(img);
   FUNC3(FUNC9()==0);
   FUNC12(old);

   int err = FUNC9();

   if (err)
   {
      FUNC0("vg error %x blitting area", err);
      FUNC3(0);
      rc = -1;
   }
   else
   {
      rc = 0;
   }
finish:
   if (paint != VG_INVALID_HANDLE)
      FUNC7(paint);

   if (is_child)
      FUNC6(img);

   FUNC1(&save);
   return rc;
}