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
typedef  int SceUID ;

/* Variables and functions */
 int /*<<< orphan*/  SOUND_BLOCK_SIZE_NTSC ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  samples_block ; 
 scalar_t__ samples_done ; 
 scalar_t__ samples_made ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ sound_sem ; 
 int /*<<< orphan*/  sound_thread ; 
 scalar_t__ sound_thread_exit ; 

__attribute__((used)) static void FUNC4(void)
{
	SceUID thid;
	int ret;

	sound_sem = FUNC1("sndsem", 0, 0, 1, NULL);
	if (sound_sem < 0) FUNC0("sceKernelCreateSema() failed: %i\n", sound_sem);

	samples_made = samples_done = 0;
	samples_block = SOUND_BLOCK_SIZE_NTSC; // make sure it goes to sema
	sound_thread_exit = 0;
	thid = FUNC2("sndthread", sound_thread, 0x12, 0x10000, 0, NULL);
	if (thid >= 0)
	{
		ret = FUNC3(thid, 0, 0);
		if (ret < 0) FUNC0("sound_init: sceKernelStartThread returned %08x\n", ret);
	}
	else
		FUNC0("sceKernelCreateThread failed: %i\n", thid);
}