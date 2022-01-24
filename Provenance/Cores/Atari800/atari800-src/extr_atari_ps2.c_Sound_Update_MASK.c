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
 scalar_t__ Atari800_TV_NTSC ; 
 scalar_t__ Atari800_tv_mode ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 

void FUNC3(void)
{
	static char buffer[44100 / 50];
	unsigned int nsamples = (Atari800_tv_mode == Atari800_TV_NTSC) ? (44100 / 60) : (44100 / 50);
	FUNC0(buffer, nsamples);
	FUNC2(nsamples);
	FUNC1(buffer, nsamples);
}