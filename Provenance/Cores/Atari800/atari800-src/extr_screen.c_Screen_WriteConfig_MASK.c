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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int Screen_show_1200_leds ; 
 int Screen_show_atari_speed ; 
 int Screen_show_disk_led ; 
 int Screen_show_sector_counter ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 

void FUNC1(FILE *fp)
{
	FUNC0(fp, "SCREEN_SHOW_SPEED=%d\n", Screen_show_atari_speed);
	FUNC0(fp, "SCREEN_SHOW_IO_ACTIVITY=%d\n", Screen_show_disk_led);
	FUNC0(fp, "SCREEN_SHOW_IO_COUNTER=%d\n", Screen_show_sector_counter);
	FUNC0(fp, "SCREEN_SHOW_1200XL_LEDS=%d\n", Screen_show_1200_leds);
}