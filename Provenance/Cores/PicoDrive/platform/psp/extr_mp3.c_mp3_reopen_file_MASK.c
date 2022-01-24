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
 int /*<<< orphan*/  PSP_SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 char* mp3_fname ; 
 scalar_t__ mp3_handle ; 
 int /*<<< orphan*/  mp3_src_pos ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ,int) ; 

void FUNC4(void)
{
	if (mp3_fname == NULL) return;
	FUNC0("mp3_reopen_file(%s)\n", mp3_fname);

	// try closing, just in case
	if (mp3_handle >= 0) FUNC1(mp3_handle);

	mp3_handle = FUNC3(mp3_fname, PSP_O_RDONLY, 0777);
	if (mp3_handle >= 0)
		FUNC2(mp3_handle, mp3_src_pos, PSP_SEEK_SET);
	FUNC0("mp3_reopen_file %s\n", mp3_handle >= 0 ? "ok" : "failed");
}