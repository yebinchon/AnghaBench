#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned int freq; unsigned int channels; unsigned int sample_size; scalar_t__ frag_frames; } ;

/* Variables and functions */
 scalar_t__ Atari800_turbo ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 unsigned int FUNC3 () ; 
 scalar_t__ POKEYSND_process_buffer ; 
 TYPE_1__ Sound_out ; 
 int /*<<< orphan*/  FUNC4 (double) ; 
 unsigned int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 unsigned int last_audio_write_time ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,unsigned int) ; 
 scalar_t__ sync_buffer ; 
 unsigned int sync_buffer_size ; 
 unsigned int sync_est_fill ; 
 unsigned int sync_max_fill ; 
 unsigned int sync_read_pos ; 
 unsigned int sync_write_pos ; 

__attribute__((used)) static void FUNC8(void)
{
	unsigned int bytes_written;
	unsigned int samples_written;
	unsigned int fill;
	unsigned int new_write_pos;

	FUNC1();
	/* Current fill of the audio buffer. */
	fill = sync_write_pos - sync_read_pos;

	/* Update sync_est_fill. */
	{
		unsigned int est_gap;
		est_gap = (FUNC5() - last_audio_write_time)*Sound_out.freq*Sound_out.channels*Sound_out.sample_size;
		if (fill < est_gap)
			sync_est_fill = 0;
		else
			sync_est_fill = fill - est_gap;
	}

	if (Atari800_turbo && sync_est_fill > sync_max_fill) {
		FUNC2();
		return;
	}

	/* produce samples from the sound emulation */
	samples_written = FUNC3();
	bytes_written = Sound_out.sample_size * samples_written;

	/* if there isn't enough room... */
	if (bytes_written > sync_buffer_size - fill) {
		/* Overflow of sync_buffer. */
#if DEBUG
		Log_print("Sound buffer overflow: free %d, needed %d",
				  (sync_buffer_size - fill)/Sound_out.channels/Sound_out.sample_size,
				  bytes_written/Sound_out.channels/Sound_out.sample_size);
#endif
		/* Wait until hardware buffer can be filled, or wait until callback
		   makes place in the buffer. */
		do {
			FUNC2();
			/* Sleep for the duration of one full HW buffer. */
			FUNC4((double)Sound_out.frag_frames / Sound_out.freq);
			FUNC1();
#ifndef SOUND_CALLBACK
			FUNC6(); /* Write to audio buffer as much as possible. */
#endif /* SOUND_CALLBACK */
			fill = sync_write_pos - sync_read_pos;
		} while (bytes_written > sync_buffer_size - fill);
	}
	/* Now bytes_written <= audio_buffer_size + dsp_read_pos - dsp_write_pos) */

#if DEBUG >= 2
	Log_print("UpdateSyncBuffer: est_gap: %f, fill %u, write %u",
			(Util_time() - last_audio_write_time)*Sound_out.freq,
	          fill / Sound_out.channels/Sound_out.sample_size,
	          bytes_written / Sound_out.channels/Sound_out.sample_size);
#endif
	/* now we copy the data into the buffer and adjust the positions */
	new_write_pos = sync_write_pos + bytes_written;
	if (new_write_pos/sync_buffer_size == sync_write_pos/sync_buffer_size)
		/* no wrap */
		FUNC7(sync_buffer + sync_write_pos%sync_buffer_size, POKEYSND_process_buffer, bytes_written);
	else {
		/* wraps */
		int first_part_size = sync_buffer_size - sync_write_pos%sync_buffer_size;
		FUNC7(sync_buffer + sync_write_pos%sync_buffer_size, POKEYSND_process_buffer, first_part_size);
		FUNC7(sync_buffer, POKEYSND_process_buffer + first_part_size, bytes_written - first_part_size);
	}

	sync_write_pos = new_write_pos;
	if (sync_write_pos > sync_read_pos + sync_buffer_size)
		sync_write_pos -= sync_buffer_size;
	FUNC2();
}