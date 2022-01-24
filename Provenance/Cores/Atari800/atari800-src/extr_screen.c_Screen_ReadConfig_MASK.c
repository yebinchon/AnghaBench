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
 int FALSE ; 
 int Screen_show_1200_leds ; 
 int Screen_show_atari_speed ; 
 int Screen_show_disk_led ; 
 int Screen_show_sector_counter ; 
 int TRUE ; 
 int FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 

int FUNC2(char *string, char *ptr)
{
	if (FUNC1(string, "SCREEN_SHOW_SPEED") == 0)
		return (Screen_show_atari_speed = FUNC0(ptr)) != -1;
	else if (FUNC1(string, "SCREEN_SHOW_IO_ACTIVITY") == 0)
		return (Screen_show_disk_led = FUNC0(ptr)) != -1;
	else if (FUNC1(string, "SCREEN_SHOW_IO_COUNTER") == 0)
		return (Screen_show_sector_counter = FUNC0(ptr)) != -1;
	else if (FUNC1(string, "SCREEN_SHOW_1200XL_LEDS") == 0)
		return (Screen_show_1200_leds = FUNC0(ptr)) != -1;
	else return FALSE;
	return TRUE;
}