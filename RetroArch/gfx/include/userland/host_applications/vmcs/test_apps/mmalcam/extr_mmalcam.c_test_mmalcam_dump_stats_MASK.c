#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_3__ {int buffer_count; int frame_count; int frames_skipped; int frames_discarded; int eos_seen; int maximum_frame_bytes; int total_bytes; int corrupt_macroblocks; } ;
typedef  TYPE_1__ MMAL_PARAMETER_STATISTICS_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void FUNC1(const char *title, MMAL_PARAMETER_STATISTICS_T* stats)
{
   FUNC0("[%s]\n", title);
   FUNC0("buffer_count: %u\n", stats->buffer_count);
   FUNC0("frame_count: %u\n", stats->frame_count);
   FUNC0("frames_skipped: %u\n", stats->frames_skipped);
   FUNC0("frames_discarded: %u\n", stats->frames_discarded);
   FUNC0("eos_seen: %u\n", stats->eos_seen);
   FUNC0("maximum_frame_bytes: %u\n", stats->maximum_frame_bytes);
   FUNC0("total_bytes_hi: %u\n", (uint32_t)(stats->total_bytes >> 32));
   FUNC0("total_bytes_lo: %u\n", (uint32_t)(stats->total_bytes));
   FUNC0("corrupt_macroblocks: %u\n", stats->corrupt_macroblocks);
}