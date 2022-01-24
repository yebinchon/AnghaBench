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
typedef  int /*<<< orphan*/  ULONG ;
typedef  int /*<<< orphan*/  UBYTE ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int Screen_HEIGHT ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int Screen_WIDTH ; 
 int /*<<< orphan*/ * Screen_atari ; 
 int /*<<< orphan*/ * Screen_atari1 ; 
 int /*<<< orphan*/ * Screen_atari2 ; 
 int /*<<< orphan*/ * Screen_atari_b ; 
 int /*<<< orphan*/ * Screen_dirty ; 
 int Screen_show_atari_speed ; 
 int TRUE ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (char*,char*) ; 

int FUNC6(int *argc, char *argv[])
{
	int i;
	int j;
	int help_only = FALSE;

	for (i = j = 1; i < *argc; i++) {
		int i_a = (i + 1 < *argc);		/* is argument available? */
		int a_m = FALSE;			/* error, argument missing! */
		
		if (FUNC5(argv[i], "-screenshots") == 0) {
			if (i_a)
				FUNC2(argv[++i]);
			else a_m = TRUE;
		}
		else if (FUNC5(argv[i], "-showspeed") == 0) {
			Screen_show_atari_speed = TRUE;
		}
		else {
			if (FUNC5(argv[i], "-help") == 0) {
				help_only = TRUE;
				FUNC0("\t-screenshots <p> Set filename pattern for screenshots");
				FUNC0("\t-showspeed       Show percentage of actual speed");
			}
			argv[j++] = argv[i];
		}

		if (a_m) {
			FUNC0("Missing argument for '%s'", argv[i]);
			return FALSE;
		}
	}
	*argc = j;

	/* don't bother mallocing Screen_atari with just "-help" */
	if (help_only)
		return TRUE;

	if (Screen_atari == NULL) { /* platform-specific code can initialize it in theory */
		Screen_atari = (ULONG *) FUNC3(Screen_HEIGHT * Screen_WIDTH);
		/* Clear the screen. */
		FUNC4(Screen_atari, 0, Screen_HEIGHT * Screen_WIDTH);
#ifdef DIRTYRECT
		Screen_dirty = (UBYTE *) Util_malloc(Screen_HEIGHT * Screen_WIDTH / 8);
		Screen_EntireDirty();
#endif
#ifdef BITPL_SCR
		Screen_atari_b = (ULONG *) Util_malloc(Screen_HEIGHT * Screen_WIDTH);
		memset(Screen_atari_b, 0, Screen_HEIGHT * Screen_WIDTH);
		Screen_atari1 = Screen_atari;
		Screen_atari2 = Screen_atari_b;
#endif
	}

	return TRUE;
}