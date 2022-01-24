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
struct Votrax_interface {int num; int /*<<< orphan*/  BusyCallback; } ;
typedef  int /*<<< orphan*/  SWORD ;

/* Variables and functions */
 scalar_t__ Atari800_TV_PAL ; 
 scalar_t__ Atari800_tv_mode ; 
 void* FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 void* PBI_XLD_v_enabled ; 
 scalar_t__ FUNC1 (int) ; 
 int VOICEBOX_BASEAUDF ; 
 void* VOICEBOX_enabled ; 
 void* VOTRAXSND_busy ; 
 int /*<<< orphan*/  VOTRAXSND_busy_callback_async ; 
 int VTRX_BLOCK_SIZE ; 
 scalar_t__ VTRX_RATE ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int bit16 ; 
 int dsprate ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int num_pokeys ; 
 int ratio ; 
 int samples_per_frame ; 
 int /*<<< orphan*/ * temp_votrax_buffer ; 
 int /*<<< orphan*/ * votrax_buffer ; 
 scalar_t__ votrax_sync_samples ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(int playback_freq, int n_pokeys, int b16)
{
	static struct Votrax_interface vi;
	int temp_votrax_buffer_size;
	bit16 = b16;
	dsprate = playback_freq;
	num_pokeys = n_pokeys;
	if (!FUNC5()) return;
	if (num_pokeys != 1 && num_pokeys != 2) {
		FUNC0("VOTRAXSND_Init: cannot handle num_pokeys=%d", num_pokeys);
#ifdef PBI_XLD
		PBI_XLD_v_enabled = FALSE;
#endif
#ifdef VOICEBOX
		VOICEBOX_enabled = FALSE;
#endif
		return;
	}
	vi.num = 1;
	vi.BusyCallback = VOTRAXSND_busy_callback_async;
	FUNC3();
	FUNC2((void *)&vi);
	samples_per_frame = dsprate/(Atari800_tv_mode == Atari800_TV_PAL ? 50 : 60);
	ratio = (double)VTRX_RATE/(double)dsprate;
#ifdef VOICEBOX
	temp_votrax_buffer_size = (int)(VTRX_BLOCK_SIZE*ratio*(VOICEBOX_BASEAUDF+1) + 10); /* +10 .. little extra? */
#else
	temp_votrax_buffer_size = (int)(VTRX_BLOCK_SIZE*ratio + 10); /* +10 .. little extra? */
#endif
	FUNC4(temp_votrax_buffer);
	temp_votrax_buffer = (SWORD *)FUNC1(temp_votrax_buffer_size*sizeof(SWORD));
	FUNC4(votrax_buffer);
	votrax_buffer = (SWORD *)FUNC1(VTRX_BLOCK_SIZE*sizeof(SWORD));

	VOTRAXSND_busy = FALSE;
	votrax_sync_samples = 0;
}