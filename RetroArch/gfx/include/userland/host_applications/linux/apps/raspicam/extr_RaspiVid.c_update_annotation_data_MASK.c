#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int enable_annotate; char* annotate_string; int /*<<< orphan*/  annotate_y; int /*<<< orphan*/  annotate_x; int /*<<< orphan*/  annotate_justify; int /*<<< orphan*/  annotate_bg_colour; int /*<<< orphan*/  annotate_text_colour; int /*<<< orphan*/  annotate_text_size; } ;
struct TYPE_5__ {scalar_t__ gps; } ;
struct TYPE_7__ {int bitrate; TYPE_2__ camera_parameters; int /*<<< orphan*/  camera_component; int /*<<< orphan*/  level; int /*<<< orphan*/  profile; int /*<<< orphan*/  intraperiod; int /*<<< orphan*/  framerate; int /*<<< orphan*/  intra_refresh_type; TYPE_1__ common_settings; } ;
typedef  TYPE_3__ RASPIVID_STATE ;

/* Variables and functions */
 int ANNOTATE_APP_TEXT ; 
 int /*<<< orphan*/  FUNC0 (char**,char*,int,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  intra_refresh_map ; 
 int /*<<< orphan*/  intra_refresh_map_size ; 
 int /*<<< orphan*/  level_map ; 
 int /*<<< orphan*/  level_map_size ; 
 int /*<<< orphan*/  profile_map ; 
 int /*<<< orphan*/  profile_map_size ; 
 char* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(RASPIVID_STATE *state)
{
   // So, if we have asked for a application supplied string, set it to the H264 or GPS parameters
   if (state->camera_parameters.enable_annotate & ANNOTATE_APP_TEXT)
   {
      char *text;

      if (state->common_settings.gps)
      {
         text = FUNC2();
      }
      else
      {
         const char *refresh = FUNC4(state->intra_refresh_type, intra_refresh_map, intra_refresh_map_size);

         FUNC0(&text,  "%dk,%df,%s,%d,%s,%s",
                  state->bitrate / 1000,  state->framerate,
                  refresh ? refresh : "(none)",
                  state->intraperiod,
                  FUNC4(state->profile, profile_map, profile_map_size),
                  FUNC4(state->level, level_map, level_map_size));
      }

      FUNC3(state->camera_component, state->camera_parameters.enable_annotate, text,
                                   state->camera_parameters.annotate_text_size,
                                   state->camera_parameters.annotate_text_colour,
                                   state->camera_parameters.annotate_bg_colour,
                                   state->camera_parameters.annotate_justify,
                                   state->camera_parameters.annotate_x,
                                   state->camera_parameters.annotate_y
                                  );

      FUNC1(text);
   }
   else
   {
      FUNC3(state->camera_component, state->camera_parameters.enable_annotate, state->camera_parameters.annotate_string,
                                   state->camera_parameters.annotate_text_size,
                                   state->camera_parameters.annotate_text_colour,
                                   state->camera_parameters.annotate_bg_colour,
                                   state->camera_parameters.annotate_justify,
                                   state->camera_parameters.annotate_x,
                                   state->camera_parameters.annotate_y
                                  );
   }
}