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
 int /*<<< orphan*/  FUNC0 () ; 
 int Atari800_TV_NTSC ; 
 int Atari800_TV_PAL ; 
 int /*<<< orphan*/  COLOURS_NTSC_external ; 
 int /*<<< orphan*/  COLOURS_NTSC_setup ; 
 int /*<<< orphan*/  COLOURS_PAL_external ; 
 int /*<<< orphan*/  COLOURS_PAL_setup ; 
 int /*<<< orphan*/ * Colours_external ; 
 int /*<<< orphan*/ * Colours_setup ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(int tv_mode)
{
	/* Set pointers to the current setup and external palette. */
	if (tv_mode == Atari800_TV_NTSC) {
		Colours_setup = &COLOURS_NTSC_setup;
		Colours_external = &COLOURS_NTSC_external;
	}
       	else if (tv_mode == Atari800_TV_PAL) {
		Colours_setup = &COLOURS_PAL_setup;
		Colours_external = &COLOURS_PAL_external;
	}
	else {
		FUNC0();
		FUNC1("Interal error: Invalid Atari800_tv_mode\n");
		FUNC2(1);
	}
}