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
typedef  int /*<<< orphan*/  UBYTE ;

/* Variables and functions */
 int POKEYSND_BIT16 ; 
 int POKEYSND_num_pokeys ; 
 int /*<<< orphan*/ * POKEYSND_process_buffer ; 
 int POKEYSND_process_buffer_fill ; 
 int POKEYSND_process_buffer_length ; 
 int POKEYSND_snd_flags ; 
 double FUNC0 (double,double*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 unsigned int samp_pos ; 
 unsigned int ticks_per_sample ; 

__attribute__((used)) static void FUNC3(unsigned int num_ticks)
{
	double new_samp_pos;
	unsigned int ticks;
	UBYTE *buffer = POKEYSND_process_buffer + POKEYSND_process_buffer_fill;
	UBYTE *buffer_end = POKEYSND_process_buffer + POKEYSND_process_buffer_length;

	for (;;) {
		double int_part;
		new_samp_pos = samp_pos + ticks_per_sample;
		new_samp_pos = FUNC0(new_samp_pos, &int_part);
		ticks = (unsigned int)int_part;
		if (ticks > num_ticks) {
			samp_pos -= num_ticks;
			break;
		}
		if (buffer >= buffer_end)
			break;

		samp_pos = new_samp_pos;
		num_ticks -= ticks;

		if (POKEYSND_snd_flags & POKEYSND_BIT16) {
			FUNC1(buffer, 1);
			buffer += 2 * POKEYSND_num_pokeys;
		}
		else {
			FUNC2(buffer, 1);
			buffer += POKEYSND_num_pokeys;
		}

	}

	POKEYSND_process_buffer_fill = buffer - POKEYSND_process_buffer;
}