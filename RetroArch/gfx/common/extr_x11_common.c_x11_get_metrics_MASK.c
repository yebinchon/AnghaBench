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
typedef  enum display_metric_types { ____Placeholder_display_metric_types } display_metric_types ;
typedef  int /*<<< orphan*/  Display ;

/* Variables and functions */
#define  DISPLAY_METRIC_DPI 133 
#define  DISPLAY_METRIC_MM_HEIGHT 132 
#define  DISPLAY_METRIC_MM_WIDTH 131 
#define  DISPLAY_METRIC_NONE 130 
#define  DISPLAY_METRIC_PIXEL_HEIGHT 129 
#define  DISPLAY_METRIC_PIXEL_WIDTH 128 
 int FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

bool FUNC6(void *data,
      enum display_metric_types type, float *value)
{
   unsigned     screen_no  = 0;
   Display           *dpy  = (Display*)FUNC5(NULL);
   int pixels_x            = FUNC2(dpy, screen_no);
   int pixels_y            = FUNC0(dpy, screen_no);
   int physical_width      = FUNC3(dpy, screen_no);
   int physical_height     = FUNC1(dpy, screen_no);

   (void)pixels_y;

   FUNC4(dpy);

   switch (type)
   {
      case DISPLAY_METRIC_PIXEL_WIDTH:
         *value = (float)pixels_x;
         break;
      case DISPLAY_METRIC_PIXEL_HEIGHT:
         *value = (float)pixels_y;
         break;
      case DISPLAY_METRIC_MM_WIDTH:
         *value = (float)physical_width;
         break;
      case DISPLAY_METRIC_MM_HEIGHT:
         *value = (float)physical_height;
         break;
      case DISPLAY_METRIC_DPI:
         *value = ((((float)pixels_x) * 25.4) / ((float)physical_width));
         break;
      case DISPLAY_METRIC_NONE:
      default:
         *value = 0;
         return false;
   }

   return true;
}