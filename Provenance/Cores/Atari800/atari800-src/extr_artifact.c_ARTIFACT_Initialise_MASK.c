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
 int /*<<< orphan*/  ARTIFACT_NONE ; 
 int /*<<< orphan*/  ARTIFACT_SIZE ; 
 int /*<<< orphan*/  Atari800_tv_mode ; 
 int FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mode_cfg_strings ; 
 int mode_ntsc ; 
 int mode_pal ; 
 scalar_t__ FUNC4 (char*,char*) ; 

int FUNC5(int *argc, char *argv[])
{
	int i;
	int j;

	for (i = j = 1; i < *argc; i++) {
		int i_a = (i + 1 < *argc);		/* is argument available? */
		int a_m = FALSE;			/* error, argument missing! */

		if (FUNC4(argv[i], "-ntsc-artif") == 0) {
			if (i_a) {
				int idx = FUNC0(argv[++i], mode_cfg_strings, ARTIFACT_SIZE);
				if (idx < 0) {
					FUNC1("Invalid value for -ntsc-artif");
					return FALSE;
				}
				mode_ntsc = idx;
			} else a_m = TRUE;
		}
		else if (FUNC4(argv[i], "-pal-artif") == 0) {
			if (i_a) {
				int idx = FUNC0(argv[++i], mode_cfg_strings, ARTIFACT_SIZE);
				if (idx < 0) {
					FUNC1("Invalid value for -pal-artif");
					return FALSE;
				}
				mode_pal = idx;
			} else a_m = TRUE;
		}

		else {
			if (FUNC4(argv[i], "-help") == 0) {
				FUNC1("\t-ntsc-artif none|ntsc-old|ntsc-new|ntsc-full");
				FUNC1("\t                 Select video artifacts for NTSC");
				FUNC1("\t-pal-artif none|pal-simple|pal-accu");
				FUNC1("\t                 Select video artifacts for PAL");
			}
			argv[j++] = argv[i];
		}

		if (a_m) {
			FUNC1("Missing argument for '%s'", argv[i]);
			return FALSE;
		}
	}
	*argc = j;

	/* Assume that Atari800_tv_mode has been already initialised. */
	FUNC2(Atari800_tv_mode);
	FUNC3(ARTIFACT_NONE, FALSE);
	return TRUE;
}