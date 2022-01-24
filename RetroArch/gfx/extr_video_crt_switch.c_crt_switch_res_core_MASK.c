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

/* Variables and functions */
 int crt_center_adjust ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned int FUNC1 (unsigned int) ; 
 int crt_index ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int) ; 
 int crt_tmp_center_adjust ; 
 scalar_t__ fly_aspect ; 
 unsigned int ra_core_height ; 
 float ra_core_hz ; 
 unsigned int ra_core_width ; 
 unsigned int ra_tmp_height ; 
 unsigned int ra_tmp_width ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (float) ; 

void FUNC6(unsigned width, unsigned height,
      float hz, unsigned crt_mode,
      int crt_switch_center_adjust, int monitor_index, bool dynamic)
{
   /* ra_core_hz float passed from within
    * video_driver_monitor_adjust_system_rates() */
   if (width == 4)
   {
      width = 320;
      height = 240;
   }

   ra_core_height = height;
   ra_core_hz     = hz;

   if (dynamic)
      ra_core_width = FUNC1(width);
   else 
      ra_core_width  = width;

   crt_center_adjust = crt_switch_center_adjust;
   crt_index  = monitor_index;

   if (crt_mode == 2)
   {
      if (hz > 53)
         ra_core_hz = hz * 2;

      if (hz <= 53)
         ra_core_hz = 120.0f;
   }

   FUNC0();

   /* Detect resolution change and switch */
   if (
      (ra_tmp_height != ra_core_height) ||
      (ra_core_width != ra_tmp_width) || (crt_center_adjust != crt_tmp_center_adjust)
      )
      FUNC2(ra_core_width, ra_core_height);

   ra_tmp_height  = ra_core_height;
   ra_tmp_width   = ra_core_width;
    crt_tmp_center_adjust = crt_center_adjust;

   /* Check if aspect is correct, if not change */
   if (FUNC4() != fly_aspect)
   {
      FUNC5((float)fly_aspect);
      FUNC3();
   }
}