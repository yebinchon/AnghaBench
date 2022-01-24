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
 scalar_t__ EVENT_RECORDING_VERSION ; 
 int FALSE ; 
 int /*<<< orphan*/  GZBUFSIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ INPUT_MOUSE_AMIGA ; 
 scalar_t__ INPUT_MOUSE_GUN ; 
 scalar_t__ INPUT_MOUSE_JOY ; 
 scalar_t__ INPUT_MOUSE_KOALA ; 
 scalar_t__ INPUT_MOUSE_OFF ; 
 scalar_t__ INPUT_MOUSE_PAD ; 
 scalar_t__ INPUT_MOUSE_PEN ; 
 scalar_t__ INPUT_MOUSE_ST ; 
 scalar_t__ INPUT_MOUSE_TOUCH ; 
 scalar_t__ INPUT_MOUSE_TRAK ; 
 int INPUT_cx85 ; 
 int INPUT_direct_mouse ; 
 int INPUT_joy_multijoy ; 
 scalar_t__ INPUT_mouse_mode ; 
 int INPUT_mouse_port ; 
 int INPUT_mouse_speed ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int TRUE ; 
 int FUNC2 (char*) ; 
 int cx85_port ; 
 int /*<<< orphan*/  gzbuf ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/ * playbackfp ; 
 int playingback ; 
 int /*<<< orphan*/ * recordfp ; 
 int recording ; 
 scalar_t__ recording_version ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,scalar_t__*) ; 
 scalar_t__ FUNC8 (char*,char*) ; 

int FUNC9(int *argc, char *argv[])
{
	int i;
	int j;

	for (i = j = 1; i < *argc; i++) {
		int i_a = (i + 1 < *argc);		/* is argument available? */
		int a_m = FALSE;			/* error, argument missing! */

		if (FUNC8(argv[i], "-mouse") == 0) {
			if (i_a) {
				char *mode = argv[++i];
				if (FUNC8(mode, "off") == 0)
					INPUT_mouse_mode = INPUT_MOUSE_OFF;
				else if (FUNC8(mode, "pad") == 0)
					INPUT_mouse_mode = INPUT_MOUSE_PAD;
				else if (FUNC8(mode, "touch") == 0)
					INPUT_mouse_mode = INPUT_MOUSE_TOUCH;
				else if (FUNC8(mode, "koala") == 0)
					INPUT_mouse_mode = INPUT_MOUSE_KOALA;
				else if (FUNC8(mode, "pen") == 0)
					INPUT_mouse_mode = INPUT_MOUSE_PEN;
				else if (FUNC8(mode, "gun") == 0)
					INPUT_mouse_mode = INPUT_MOUSE_GUN;
				else if (FUNC8(mode, "amiga") == 0)
					INPUT_mouse_mode = INPUT_MOUSE_AMIGA;
				else if (FUNC8(mode, "st") == 0)
					INPUT_mouse_mode = INPUT_MOUSE_ST;
				else if (FUNC8(mode, "trak") == 0)
					INPUT_mouse_mode = INPUT_MOUSE_TRAK;
				else if (FUNC8(mode, "joy") == 0)
					INPUT_mouse_mode = INPUT_MOUSE_JOY;
			}
			else a_m = TRUE;
		}
		else if (FUNC8(argv[i], "-mouseport") == 0) {
			if (i_a) {
				INPUT_mouse_port = FUNC2(argv[++i]) - 1;
				if (INPUT_mouse_port < 0 || INPUT_mouse_port > 3) {
					FUNC1("Invalid mouse port number - should be between 0 and 3");
					return FALSE;
				}
			}
			else a_m = TRUE;
		}
		else if (FUNC8(argv[i], "-mousespeed") == 0) {
			if (i_a) {
				INPUT_mouse_speed = FUNC2(argv[++i]);
				if (INPUT_mouse_speed < 1 || INPUT_mouse_speed > 9) {
					FUNC1("Invalid mouse speed - should be between 1 and 9");
					return FALSE;
				}
			}
			else a_m = TRUE;
		}
		else if (FUNC8(argv[i], "-multijoy") == 0) {
			INPUT_joy_multijoy = 1;
		}
#ifdef EVENT_RECORDING
		else if (strcmp(argv[i], "-record") == 0) {
			if (i_a) {
				char *recfilename = argv[++i];
				if ((recordfp = gzopen(recfilename, "wb")) == NULL) {
					Log_print("Cannot open record file");
					return FALSE;
				}
				else {
					recording = TRUE;
					gzprintf(recordfp, "Atari800 event recording, version: %d\n", EVENT_RECORDING_VERSION);
				}
			}
			else a_m = TRUE;
		}
		else if (strcmp(argv[i], "-playback") == 0) {
			if (i_a) {
				char *pbfilename = argv[++i];
				if ((playbackfp = gzopen(pbfilename, "rb")) == NULL) {
					Log_print("Cannot open playback file");
					return FALSE;
				}
				else {
					playingback = TRUE;
					gzgets(playbackfp, gzbuf, GZBUFSIZE);
					if (sscanf(gzbuf, "Atari800 event recording, version: %d\n", &recording_version) != 1) {
						Log_print("Invalid playback file");
						playingback = FALSE;
						gzclose(playbackfp);
						return FALSE;
					}
					else if (recording_version > EVENT_RECORDING_VERSION) {
						Log_print("Newer version of playback file than this version of Atari800 can handle");
						playingback = FALSE;
						gzclose(playbackfp);
						return FALSE;
					}
				}
			}
			else a_m = TRUE;
		}
#endif /* EVENT_RECORDING */
 		else if (FUNC8(argv[i], "-directmouse") == 0) {
			INPUT_direct_mouse = 1;
		}
		else if (FUNC8(argv[i], "-cx85") == 0) {
			if (i_a) {
				INPUT_cx85 = 1;
				cx85_port = FUNC2(argv[++i]) - 1;
				if (cx85_port < 0 || cx85_port > 3) {
					FUNC1("Invalid cx85 port - should be between 0 and 3");
					return FALSE;
				}
			}
			else a_m = TRUE;
		}
		else {
			if (FUNC8(argv[i], "-help") == 0) {
				FUNC1("\t-mouse off       Do not use mouse");
				FUNC1("\t-mouse pad       Emulate paddles");
				FUNC1("\t-mouse touch     Emulate Atari Touch Tablet");
				FUNC1("\t-mouse koala     Emulate Koala Pad");
				FUNC1("\t-mouse pen       Emulate Light Pen");
				FUNC1("\t-mouse gun       Emulate Light Gun");
				FUNC1("\t-mouse amiga     Emulate Amiga mouse");
				FUNC1("\t-mouse st        Emulate Atari ST mouse");
				FUNC1("\t-mouse trak      Emulate Atari Trak-Ball");
				FUNC1("\t-mouse joy       Emulate joystick using mouse");
				FUNC1("\t-mouseport <n>   Set mouse port 1-4 (default 1)");
				FUNC1("\t-mousespeed <n>  Set mouse speed 1-9 (default 3)");
				FUNC1("\t-directmouse     Use absolute X/Y mouse coords");
				FUNC1("\t-cx85 <n>        Emulate CX85 numeric keypad on port <n>");
				FUNC1("\t-multijoy        Emulate MultiJoy4 interface");
				FUNC1("\t-record <file>   Record input to <file>");
				FUNC1("\t-playback <file> Playback input from <file>");
			}
			argv[j++] = argv[i];
		}

		/* this is the end of the additional argument check */
		if (a_m) {
			FUNC1("Missing argument for '%s'", argv[i]);
			return FALSE;
		}
	}

	if(INPUT_direct_mouse && !(
				INPUT_mouse_mode == INPUT_MOUSE_PAD ||
				INPUT_mouse_mode == INPUT_MOUSE_TOUCH ||
				INPUT_mouse_mode == INPUT_MOUSE_KOALA)) {
		FUNC1("-directmouse only valid with -mouse pad|touch|koala");
		return FALSE;
	}

	FUNC0();
	*argc = j;

	return TRUE;
}