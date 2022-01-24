#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ nextWaitMethod; char* description; } ;
struct TYPE_4__ {int bitrate; int framerate; int timeout; int quantisationParameter; int intraperiod; int slices; int segmentSize; int segmentWrap; int segmentNumber; scalar_t__ waitMethod; int /*<<< orphan*/  camera_parameters; int /*<<< orphan*/  preview_parameters; int /*<<< orphan*/  bCapturing; int /*<<< orphan*/  raw_output_fmt; scalar_t__ raw_output; int /*<<< orphan*/  intra_refresh_type; scalar_t__ addSPSTiming; scalar_t__ bInlineHeaders; int /*<<< orphan*/  level; int /*<<< orphan*/  profile; int /*<<< orphan*/  common_settings; } ;
typedef  TYPE_1__ RASPIVID_STATE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  initial_map ; 
 int /*<<< orphan*/  initial_map_size ; 
 int /*<<< orphan*/  intra_refresh_map ; 
 int /*<<< orphan*/  intra_refresh_map_size ; 
 int /*<<< orphan*/  level_map ; 
 int /*<<< orphan*/  level_map_size ; 
 int /*<<< orphan*/  profile_map ; 
 int /*<<< orphan*/  profile_map_size ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  raw_output_fmt_map ; 
 int /*<<< orphan*/  raw_output_fmt_map_size ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_2__* wait_method_description ; 
 int wait_method_description_size ; 

__attribute__((used)) static void FUNC6(RASPIVID_STATE *state)
{
   int i;

   if (!state)
   {
      FUNC5(0);
      return;
   }

   FUNC3(&state->common_settings);

   FUNC0(stderr, "bitrate %d, framerate %d, time delay %d\n", state->bitrate, state->framerate, state->timeout);
   FUNC0(stderr, "H264 Profile %s\n", FUNC2(state->profile, profile_map, profile_map_size));
   FUNC0(stderr, "H264 Level %s\n", FUNC2(state->level, level_map, level_map_size));
   FUNC0(stderr, "H264 Quantisation level %d, Inline headers %s\n", state->quantisationParameter, state->bInlineHeaders ? "Yes" : "No");
   FUNC0(stderr, "H264 Fill SPS Timings %s\n", state->addSPSTiming ? "Yes" : "No");
   FUNC0(stderr, "H264 Intra refresh type %s, period %d\n", FUNC2(state->intra_refresh_type, intra_refresh_map, intra_refresh_map_size), state->intraperiod);
   FUNC0(stderr, "H264 Slices %d\n", state->slices);

   // Not going to display segment data unless asked for it.
   if (state->segmentSize)
      FUNC0(stderr, "Segment size %d, segment wrap value %d, initial segment number %d\n", state->segmentSize, state->segmentWrap, state->segmentNumber);

   if (state->raw_output)
      FUNC0(stderr, "Raw output enabled, format %s\n", FUNC2(state->raw_output_fmt, raw_output_fmt_map, raw_output_fmt_map_size));

   FUNC0(stderr, "Wait method : ");
   for (i=0; i<wait_method_description_size; i++)
   {
      if (state->waitMethod == wait_method_description[i].nextWaitMethod)
         FUNC0(stderr, "%s", wait_method_description[i].description);
   }
   FUNC0(stderr, "\nInitial state '%s'\n", FUNC2(state->bCapturing, initial_map, initial_map_size));
   FUNC0(stderr, "\n\n");

   FUNC4(&state->preview_parameters);
   FUNC1(&state->camera_parameters);
}