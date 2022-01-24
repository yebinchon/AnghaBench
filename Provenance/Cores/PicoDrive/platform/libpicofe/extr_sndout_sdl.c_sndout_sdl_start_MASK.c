#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int freq; int channels; int samples; int /*<<< orphan*/ * userdata; int /*<<< orphan*/  callback; int /*<<< orphan*/  format; } ;
typedef  TYPE_1__ SDL_AudioSpec ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIO_S16LSB ; 
 char* FUNC0 () ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ buf_r ; 
 scalar_t__ buf_w ; 
 int /*<<< orphan*/  callback ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int started ; 
 int /*<<< orphan*/  stderr ; 

int FUNC5(int rate, int stereo)
{
	SDL_AudioSpec desired;
	int samples, shift;
	int ret;

	if (started)
		FUNC4();

	desired.freq = rate;
	desired.format = AUDIO_S16LSB;
	desired.channels = stereo ? 2 : 1;
	desired.callback = callback;
	desired.userdata = NULL;

	samples = rate >> 6;
	for (shift = 8; (1 << shift) < samples; shift++)
		;
	desired.samples = 1 << shift;

	ret = FUNC1(&desired, NULL);
	if (ret != 0) {
		FUNC3(stderr, "SDL_OpenAudio: %s\n", FUNC0());
		return -1;
	}

	buf_w = buf_r = 0;

	FUNC2(0);
	started = 1;

	return 0;
}