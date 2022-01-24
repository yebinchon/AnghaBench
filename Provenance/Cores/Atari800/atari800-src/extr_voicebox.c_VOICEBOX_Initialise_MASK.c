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
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int TRUE ; 
 int VOICEBOX_enabled ; 
 int VOICEBOX_ii ; 
 scalar_t__ FUNC1 (char*,char*) ; 

int FUNC2(int *argc, char *argv[])
{
	int i, j;
	for (i = j = 1; i < *argc; i++) {
		if (FUNC1(argv[i], "-voicebox") == 0) {
			VOICEBOX_enabled = TRUE;
			VOICEBOX_ii = FALSE;
		}
		else if (FUNC1(argv[i], "-voiceboxii") == 0){
			VOICEBOX_enabled = TRUE;
			VOICEBOX_ii = TRUE;
		}
		else {
		 	if (FUNC1(argv[i], "-help") == 0) {
				FUNC0("\t-voicebox        Emulate the Alien Group Voice Box I");
				FUNC0("\t-voiceboxii      Emulate the Alien Group Voice Box II");
			}

			argv[j++] = argv[i];
		}

	}
	*argc = j;

	return TRUE;
}