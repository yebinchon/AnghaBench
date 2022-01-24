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
typedef  int /*<<< orphan*/  SceSize ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int* mp3_codec_struct ; 
 scalar_t__* mp3_mix_buffer ; 
 scalar_t__* mp3_src_buffer ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (size_t) ; 
 int FUNC4 (int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  thread_busy_sem ; 
 scalar_t__ thread_exit ; 
 int /*<<< orphan*/  thread_job_sem ; 
 size_t working_buf ; 

__attribute__((used)) static int FUNC8(SceSize args, void *argp)
{
	int ret, frame_size;

	FUNC0("decode_thread started with id %08x, priority %i\n",
                FUNC7(), FUNC6());

	while (!thread_exit)
	{
		FUNC1(thread_job_sem);
		if (thread_exit) break;

		FUNC1(thread_busy_sem);
		//lprintf("{ job\n");

		frame_size = FUNC3(working_buf);
		if (frame_size > 0)
		{
			mp3_codec_struct[6] = (unsigned long)mp3_src_buffer[working_buf];
			mp3_codec_struct[8] = (unsigned long)mp3_mix_buffer[working_buf];
			mp3_codec_struct[7] = mp3_codec_struct[10] = frame_size;
			mp3_codec_struct[9] = 1152 * 4;

			ret = FUNC4(mp3_codec_struct, 0x1002);
			if (ret < 0) FUNC0("sceAudiocodecDecode failed with %08x\n", ret);
		}

		//lprintf("} job\n");
		FUNC2(thread_busy_sem);
	}

	FUNC0("leaving decode thread\n");
	FUNC5(0);
	return 0;
}