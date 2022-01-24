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
struct TYPE_2__ {int freq; int sample_size; int frag_frames; } ;

/* Variables and functions */
 int FALSE ; 
 TYPE_1__ Sound_desired ; 
 int Sound_enabled ; 
 int Sound_latency ; 
 int TRUE ; 
 int FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

int FUNC3(char *option, char *ptr)
{
	if (FUNC2(option, "SOUND_ENABLED") == 0)
		return (Sound_enabled = FUNC0(ptr)) != -1;
	else if (FUNC2(option, "SOUND_RATE") == 0)
		return (Sound_desired.freq = FUNC1(ptr)) != -1;
	else if (FUNC2(option, "SOUND_BITS") == 0) {
		int bits = FUNC1(ptr);
		if (bits != 8 && bits != 16)
			return FALSE;
		Sound_desired.sample_size = bits / 8;
	}
	else if (FUNC2(option, "SOUND_FRAG_FRAMES") == 0) {
		int val = FUNC1(ptr);
		if (val == -1)
			return FALSE;
		Sound_desired.frag_frames = val;
	}
#ifdef SYNCHRONIZED_SOUND
	else if (strcmp(option, "SOUND_LATENCY") == 0)
		return (Sound_latency = Util_sscandec(ptr)) != -1;
#endif /* SYNCHRONIZED_SOUND */
	else
		return FALSE;
	return TRUE;
}