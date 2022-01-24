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
 scalar_t__ initialized ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  mp3_codec_struct ; 
 int /*<<< orphan*/ * mp3_fname ; 
 int mp3_handle ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int thread_busy_sem ; 
 int thread_exit ; 
 int thread_job_sem ; 

void FUNC8(void)
{
	FUNC0("mp3_deinit, initialized=%i\n", initialized);

	if (!initialized) return;
	thread_exit = 1;
	FUNC1(thread_busy_sem);
	FUNC2(thread_busy_sem);

	FUNC7(thread_job_sem, 1);
	FUNC5(100*1000);

	if (mp3_handle >= 0) FUNC4(mp3_handle);
	mp3_handle = -1;
	mp3_fname = NULL;

	FUNC6(thread_busy_sem);
	thread_busy_sem = -1;
	FUNC6(thread_job_sem);
	thread_job_sem = -1;
	FUNC3(mp3_codec_struct);
	initialized = 0;
}