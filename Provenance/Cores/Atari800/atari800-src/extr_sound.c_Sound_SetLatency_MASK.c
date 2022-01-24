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
struct TYPE_2__ {unsigned int channels; unsigned int sample_size; int freq; int frag_frames; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ Sound_enabled ; 
 int Sound_latency ; 
 TYPE_1__ Sound_out ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 unsigned int avg_fill ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  sync_buffer ; 
 unsigned int sync_buffer_size ; 
 unsigned int sync_max_fill ; 
 unsigned int sync_min_fill ; 
 scalar_t__ sync_read_pos ; 
 unsigned int sync_write_pos ; 

void FUNC5(unsigned int latency)
{
	Sound_latency = latency;
	if (Sound_enabled) {
		/* how many fragments in the audio buffer */
		enum { SYNC_BUFFER_FRAGS = 5 };
		unsigned int bytes_per_frame = Sound_out.channels * Sound_out.sample_size;
		unsigned int latency_frames = Sound_out.freq*Sound_latency/1000;
		FUNC0();
		sync_buffer_size = (latency_frames + SYNC_BUFFER_FRAGS*Sound_out.frag_frames) * bytes_per_frame;
		sync_min_fill = latency_frames * bytes_per_frame;
		sync_max_fill = sync_min_fill + Sound_out.frag_frames * bytes_per_frame;
		avg_fill = sync_min_fill;
		sync_read_pos = 0;
		sync_write_pos = sync_min_fill;
		FUNC3(sync_buffer);
		sync_buffer = FUNC2(sync_buffer_size);
		FUNC4(sync_buffer, 0, sync_buffer_size);
		FUNC1();
	}
}