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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  MFP_IRQ_on ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  POKEYSND_FREQ_17_EXACT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ RATE12KHZ ; 
 scalar_t__ RATE25KHZ ; 
 scalar_t__ RATE50KHZ ; 
 int SNDBUFSIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int TRUE ; 
 scalar_t__ FUNC4 (char*) ; 
 char* dsp_buffer1 ; 
 char* dsp_buffer2 ; 
 char* dsp_endbuf1 ; 
 char* dsp_endbuf2 ; 
 scalar_t__ dsprate ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (char,long*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int sndbufsize ; 
 int sound_enabled ; 
 scalar_t__ FUNC9 (char*,char*) ; 

int FUNC10(int *argc, char *argv[])
{
	int i, j;
	int help_only = FALSE;

	for (i = j = 1; i < *argc; i++) {
		int i_a = (i + 1 < *argc);		/* is argument available? */
		int a_m = FALSE;			/* error, argument missing! */

		if (FUNC9(argv[i], "-sound") == 0)
			sound_enabled = TRUE;
		else if (FUNC9(argv[i], "-nosound") == 0)
			sound_enabled = FALSE;
		else if (FUNC9(argv[i], "-dsprate") == 0) {
			if (i_a) {
				dsprate = FUNC4(argv[++i]);
				if (dsprate == RATE50KHZ)
					sndbufsize = 4*SNDBUFSIZE;
				else if (dsprate == RATE25KHZ)
					sndbufsize = 2*SNDBUFSIZE;
				else {
					dsprate = RATE12KHZ;
					sndbufsize = SNDBUFSIZE;
				}
			}
			else a_m = TRUE;
		}
		else {
			if (FUNC9(argv[i], "-help") == 0) {
				help_only = TRUE;
				FUNC0("\t-sound           Enable sound\n"
				       "\t-nosound         Disable sound\n"
				       "\t-dsprate <rate>  Set sample rate in Hz"
				      );
			}
			argv[j++] = argv[i];
		}

		if (a_m) {
			FUNC0("Missing argument for '%s'", argv[i]);
			sound_enabled = FALSE;
			return FALSE;
		}
	}

	*argc = j;

	if (help_only) {
		sound_enabled = FALSE;
		return TRUE;
	}

	/* test of Sound hardware availability */
	if (sound_enabled) {
		long val;

		if (FUNC6('_SND', &val)) {
			if (!(val & 2))
				sound_enabled = FALSE;	/* Sound DMA hardware is missing */
		}
		else
			sound_enabled = FALSE;	/* CookieJar is missing */
	}

	if (sound_enabled) {
		dsp_buffer1 = (char *) FUNC1(2 * sndbufsize, 0);
		if (!dsp_buffer1) {
			FUNC8("can't allocate sound buffer\n");
			FUNC5(1);
		}
		dsp_buffer2 = dsp_endbuf1 = dsp_buffer1 + sndbufsize;
		dsp_endbuf2 = dsp_buffer2 + sndbufsize;
		FUNC7(dsp_buffer1, 0, sndbufsize);
		FUNC7(dsp_buffer2, 127, sndbufsize);

#ifdef STEREO_SOUND
#  error "Unsupported Stereo Sound"
#else
		FUNC2(POKEYSND_FREQ_17_EXACT, dsprate, 1, 0);
#endif
		FUNC3(MFP_IRQ_on);
	}
	return TRUE;
}