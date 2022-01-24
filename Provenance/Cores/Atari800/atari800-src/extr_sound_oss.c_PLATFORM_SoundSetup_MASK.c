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
typedef  int audio_buf_info ;
struct TYPE_3__ {int frag_frames; int freq; int channels; int sample_size; } ;
typedef  TYPE_1__ Sound_setup_t ;

/* Variables and functions */
 int AFMT_S16_NE ; 
 int AFMT_U8 ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  O_WRONLY ; 
 int /*<<< orphan*/  SNDCTL_DSP_CHANNELS ; 
 int /*<<< orphan*/  SNDCTL_DSP_GETBLKSIZE ; 
 int /*<<< orphan*/  SNDCTL_DSP_GETOSPACE ; 
 int /*<<< orphan*/  SNDCTL_DSP_SETFMT ; 
 int /*<<< orphan*/  SNDCTL_DSP_SETFRAGMENT ; 
 int /*<<< orphan*/  SNDCTL_DSP_SPEED ; 
 scalar_t__ Sound_enabled ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int dsp_fd ; 
 int dspname ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

int FUNC5(Sound_setup_t *setup)
{
	int format;
	int frag_size;
	int setfragment;

	if (Sound_enabled)
		FUNC1(dsp_fd);

	dsp_fd = FUNC3(dspname, O_WRONLY);
	if (dsp_fd == -1) {
		FUNC4(dspname);
		return FALSE;
	}

	if (setup->frag_frames == 0)
		/* Set frag_frames automatically. */
		frag_size = setup->freq / 50;
	else
		frag_size = setup->frag_frames;
	frag_size *= setup->channels * setup->sample_size;

	/* By setting number of fragments to 0x7fff (ie. don't limit) we ensure
	   that the obtained fragment size will be as close to the requested value
	   as possible. */
	setfragment = 0x7fff0000;
	{
		/* Compute the closest power of two. */
		int pow_val = 1;
		int val = frag_size;
		while (val >>= 1) {
			pow_val <<= 1;
			++setfragment;
		}
		if (pow_val < frag_size)
			/* Ensure fragment size is not smaller than user-provided value. */
			++setfragment;
	}
	if (FUNC2(dsp_fd, SNDCTL_DSP_SETFRAGMENT, &setfragment) == -1) {
		FUNC0("%s: SNDCTL_DSP_SETFRAGMENT(%.8x) failed", dspname, setfragment);
		FUNC1(dsp_fd);
		return FALSE;
	}

	format = setup->sample_size == 2 ? AFMT_S16_NE : AFMT_U8;
	if (FUNC2(dsp_fd, SNDCTL_DSP_SETFMT, &format) == -1) {
		FUNC0("%s: SNDCTL_DSP_SETFMT(%i) failed", dspname, format);
		FUNC1(dsp_fd);
		return FALSE;
	}
	if (format == AFMT_S16_NE)
		setup->sample_size = 2;
	else if (format == AFMT_U8)
		setup->sample_size = 1;
	else {
		FUNC0("%s: Obtained format %i not supported", dspname, format);
		FUNC1(dsp_fd);
		return FALSE;
	}

	if (FUNC2(dsp_fd, SNDCTL_DSP_CHANNELS, &setup->channels) == -1) {
		FUNC0("%s: SNDCTL_DSP_CHANNELS(%u) failed", dspname, setup->channels);
		FUNC1(dsp_fd);
		return FALSE;
	}

	if (FUNC2(dsp_fd, SNDCTL_DSP_SPEED, &setup->freq) == -1) {
		FUNC0("%s: SNDCTL_DSP_SPEED(%u) failed", dspname, setup->freq);
		FUNC1(dsp_fd);
		return FALSE;
	}

	if (FUNC2(dsp_fd, SNDCTL_DSP_GETBLKSIZE, &frag_size) == -1) {
		FUNC0("%s: SNDCTL_DSP_GETBLKSIZE failed", dspname);
		FUNC1(dsp_fd);
		return FALSE;
	}

	setup->frag_frames = frag_size / setup->channels / setup->sample_size;
	{
		audio_buf_info bi;
		if (FUNC2(dsp_fd, SNDCTL_DSP_GETOSPACE, &bi) == -1) {
			FUNC0("%s: cannot retrieve ospace", dspname);
			return 0;
		}
#if DEBUG
		Log_print("fragments=%i, fragstotal=%i, fragsize=%i, bytes=%i", bi.fragments, bi.fragstotal, bi.fragsize, bi.bytes);
		Log_print("frag_size=%i, buf_Frames=%u", frag_size, setup->frag_frames);
#endif
	}

	return TRUE;
}