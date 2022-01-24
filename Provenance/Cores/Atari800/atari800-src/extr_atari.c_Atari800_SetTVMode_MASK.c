#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int sample_size; int /*<<< orphan*/  channels; int /*<<< orphan*/  freq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int Atari800_tv_mode ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  POKEYSND_BIT16 ; 
 int /*<<< orphan*/  POKEYSND_FREQ_17_EXACT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__ Sound_out ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

void FUNC6(int mode)
{
	if (mode != Atari800_tv_mode) {
		Atari800_tv_mode = mode;
#if !defined(BASIC) && !defined(CURSES_BASIC)
		FUNC1(mode);
		FUNC0(mode);
#endif
#if SUPPORTS_CHANGE_VIDEOMODE
		VIDEOMODE_SetVideoSystem(mode);
#endif
#ifdef SOUND
#ifdef SOUND_THIN_API
		POKEYSND_Init(POKEYSND_FREQ_17_EXACT, Sound_out.freq, Sound_out.channels, Sound_out.sample_size == 2 ? POKEYSND_BIT16 : 0);
#elif defined(SUPPORTS_SOUND_REINIT)
		Sound_Reinit();
#endif /* defined(SUPPORTS_SOUND_REINIT) */
#endif /* SOUND */
#if defined(DIRECTX)
		SetTVModeMenuItem(mode);
#endif
	}
}