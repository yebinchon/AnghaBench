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
 int /*<<< orphan*/  PSP_O_RDONLY ; 
 int* bitrates ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/ * mp3_fname ; 
 int mp3_handle ; 
 int mp3_last_error ; 
 int** mp3_src_buffer ; 
 scalar_t__ mp3_src_pos ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ thread_busy_sem ; 

int FUNC6(void *f, int size)
{
	int ret, retval = -1, sample_rate, bitrate;
	// filenames are stored instead handles in PSP, due to stupid max open file limit
	char *fname = f;

	/* make sure thread is not busy.. */
	if (thread_busy_sem >= 0)
		FUNC1(thread_busy_sem);

	if (mp3_handle >= 0) FUNC4(mp3_handle);
	mp3_handle = FUNC5(fname, PSP_O_RDONLY, 0777);
	if (mp3_handle < 0) {
		FUNC0("sceIoOpen(%s) failed\n", fname);
		goto end;
	}

	mp3_src_pos = 0;
	ret = FUNC3(0);
	if (ret <= 0) {
		FUNC0("read_next_frame() failed (%s)\n", fname);
		goto end;
	}
	sample_rate = (mp3_src_buffer[0][2] & 0x0c) >> 2;
	bitrate = mp3_src_buffer[0][2] >> 4;

	if (sample_rate != 0) {
		FUNC0("unsupported samplerate (%s)\n", fname);
		goto end; // only 44kHz supported..
	}
	bitrate = bitrates[bitrate];
	if (bitrate == 0) {
		FUNC0("unsupported bitrate (%s)\n", fname);
		goto end;
	}

	/* looking good.. */
	retval = bitrate;
end:
	if (mp3_handle >= 0) FUNC4(mp3_handle);
	mp3_handle = -1;
	mp3_fname = NULL;
	if (thread_busy_sem >= 0)
		FUNC2(thread_busy_sem);
	if (retval < 0) mp3_last_error = -1; // remember we had a problem..
	return retval;
}