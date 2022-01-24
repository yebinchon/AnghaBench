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
 int FRAG_COUNT ; 
 int /*<<< orphan*/  O_WRONLY ; 
 int /*<<< orphan*/  SNDCTL_DSP_SETFMT ; 
 int /*<<< orphan*/  SNDCTL_DSP_SETFRAGMENT ; 
 int /*<<< orphan*/  SNDCTL_DSP_SPEED ; 
 int /*<<< orphan*/  SNDCTL_DSP_STEREO ; 
 scalar_t__ can_write_safe ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,char*,int,int) ; 
 int sndout_oss_frag_frames ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int sounddev ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

int FUNC6(int rate, int stereo)
{
	static int s_oldrate = 0, s_oldstereo = 0;
	int frag, bsize, bits, ret;

	// GP2X: if no settings change, we don't need to do anything,
	// since audio is never stopped there
	if (sounddev >= 0 && rate == s_oldrate && s_oldstereo == stereo)
		return 0;

	FUNC4();
	sounddev = FUNC1("/dev/dsp", O_WRONLY);
	if (sounddev == -1)
	{
		FUNC2("open(\"/dev/dsp\")");
		sounddev = FUNC1("/dev/dsp1", O_WRONLY);
		if (sounddev == -1) {
			FUNC2("open(\"/dev/dsp1\")");
			return -1;
		}
	}

	// try to fit sndout_oss_frag_frames (video) frames
	// worth of sound data in OSS fragment
	// ignore mono because it's unlikely to be used and
	// both GP2X and Wiz mixes mono to stereo anyway.
	bsize = (sndout_oss_frag_frames * rate / 50) * 4;

	for (frag = 0; bsize; bsize >>= 1, frag++)
		;

	frag |= FRAG_COUNT << 16;	// fragment count
	ret = FUNC0(sounddev, SNDCTL_DSP_SETFRAGMENT, &frag);
	if (ret < 0)
		FUNC2("SNDCTL_DSP_SETFRAGMENT failed");

	bits = 16;
	ret = FUNC0(sounddev, SNDCTL_DSP_STEREO, &stereo);
	if (ret == 0)
		ret = FUNC0(sounddev, SNDCTL_DSP_SETFMT, &bits);
	if (ret == 0)
		ret = FUNC0(sounddev, SNDCTL_DSP_SPEED, &rate);
	if (ret < 0)
		FUNC2("failed to set audio format");

#ifdef __GP2X__
	// not sure if this is still needed (avoiding driver bugs?)
	usleep(192*1024);
#endif

	FUNC3("sndout_oss_start: %d/%dbit/%s, %d buffers of %i bytes\n",
		rate, bits, stereo ? "stereo" : "mono", frag >> 16, 1 << (frag & 0xffff));

	s_oldrate = rate; s_oldstereo = stereo;
	can_write_safe = 0;
	return 0;
}