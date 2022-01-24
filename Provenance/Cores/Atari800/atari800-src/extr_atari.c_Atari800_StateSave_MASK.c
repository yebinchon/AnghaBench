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
typedef  int UBYTE ;

/* Variables and functions */
 scalar_t__ Atari800_MACHINE_XLXE ; 
 scalar_t__ Atari800_TV_PAL ; 
 int Atari800_builtin_basic ; 
 int Atari800_builtin_game ; 
 int Atari800_f_keys ; 
 int Atari800_jumper ; 
 int Atari800_keyboard_detached ; 
 int Atari800_keyboard_leds ; 
 scalar_t__ Atari800_machine_type ; 
 scalar_t__ Atari800_tv_mode ; 
 int /*<<< orphan*/  FUNC0 (int*,int) ; 

void FUNC1(void)
{
	UBYTE temp = Atari800_tv_mode == Atari800_TV_PAL;
	FUNC0(&temp, 1);
	temp = Atari800_machine_type;
	FUNC0(&temp, 1);
	if (Atari800_machine_type == Atari800_MACHINE_XLXE) {
		temp = Atari800_builtin_basic;
		FUNC0(&temp, 1);
		temp = Atari800_keyboard_leds;
		FUNC0(&temp, 1);
		temp = Atari800_f_keys;
		FUNC0(&temp, 1);
		temp = Atari800_jumper;
		FUNC0(&temp, 1);
		temp = Atari800_builtin_game;
		FUNC0(&temp, 1);
		temp = Atari800_keyboard_detached;
		FUNC0(&temp, 1);
	}
}