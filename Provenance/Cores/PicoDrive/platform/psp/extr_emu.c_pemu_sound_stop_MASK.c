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
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int samples_block ; 
 scalar_t__ samples_done ; 
 int samples_made ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ sndBuffer ; 
 int /*<<< orphan*/  sound_sem ; 

void FUNC6(void)
{
	int i;
	if (samples_done == 0)
	{
		// if no data is written between sceAudio_38553111 and sceAudio_5C37C0AE calls,
		// we get a deadlock on next sceAudio_38553111 call
		// so this is yet another workaround:
		FUNC0((int *)(void *)sndBuffer, 0, samples_block*4/4);
		samples_made = samples_block * 3;
		FUNC5(sound_sem, 1);
	}
	FUNC4(100*1000);
	samples_made = samples_done = 0;
	for (i = 0; FUNC2() > 0 && i < 16; i++)
		FUNC1(100);
	FUNC3();
}