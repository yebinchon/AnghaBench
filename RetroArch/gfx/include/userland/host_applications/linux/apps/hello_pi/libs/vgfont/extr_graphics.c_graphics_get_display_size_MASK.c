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
typedef  int uint32_t ;
typedef  scalar_t__ uint16_t ;
typedef  int int32_t ;
struct TYPE_3__ {int width; int height; } ;
typedef  TYPE_1__ DISPMANX_MODEINFO_T ;
typedef  int /*<<< orphan*/  DISPMANX_DISPLAY_HANDLE_T ;

/* Variables and functions */
 scalar_t__ const MAX_DISPLAY_HANDLES ; 
 scalar_t__ FUNC0 (scalar_t__ const,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 

int32_t FUNC4( const uint16_t display_number,
                                   uint32_t *width,
                                   uint32_t *height)
{
   DISPMANX_MODEINFO_T mode_info;
   int32_t success = -1;
   DISPMANX_DISPLAY_HANDLE_T disp;
   FUNC2(width && height);
   *width = *height = 0;

   if(FUNC3(display_number < MAX_DISPLAY_HANDLES))
   {
      // TODO Shouldn't this close the display if it wasn't previously open?
      if (FUNC0(display_number, &disp) < 0)
      {
         FUNC2(0);
         return -1;
      }
      success = FUNC1(disp, &mode_info);

      if( success >= 0 )
      {
         *width = mode_info.width;
         *height = mode_info.height;
         FUNC2(*height > 64);
      }
      else
      {
         FUNC2(0);
      }
   }

   return success;
}