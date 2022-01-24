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
struct audsrv_fmt_t {int bits; int freq; int channels; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_VOLUME ; 
 int /*<<< orphan*/  POKEYSND_FREQ_17_EXACT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct audsrv_fmt_t*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(int *argc, char *argv[])
{
	if (FUNC3() != 0)
		FUNC0("failed to initialize audsrv: %s", FUNC2());
	else {
		struct audsrv_fmt_t format;
		format.bits = 8;
		format.freq = 44100;
		format.channels = 1;
		FUNC4(&format);
		FUNC5(MAX_VOLUME);
		FUNC1(POKEYSND_FREQ_17_EXACT, 44100, 1, 0);
	}
	return TRUE;
}