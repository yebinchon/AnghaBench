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
 int /*<<< orphan*/  crt_center_adjust ; 
 int /*<<< orphan*/  crt_index ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  ra_core_hz ; 
 int /*<<< orphan*/  ra_set_core_hz ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(unsigned width, unsigned height)
{
   FUNC2(width, height,
         ra_set_core_hz, ra_core_hz, crt_center_adjust, crt_index, crt_center_adjust);
#if defined(HAVE_VIDEOCORE)
   crt_rpi_switch(width, height, ra_core_hz, crt_center_adjust);
   video_monitor_set_refresh_rate(ra_core_hz);
   crt_switch_driver_reinit();
#endif
   FUNC3();
}