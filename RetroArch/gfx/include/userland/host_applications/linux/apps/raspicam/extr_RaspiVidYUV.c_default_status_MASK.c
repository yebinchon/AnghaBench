#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int width; int height; } ;
struct TYPE_5__ {int timeout; int demoInterval; int onTime; int offTime; int /*<<< orphan*/  camera_parameters; int /*<<< orphan*/  preview_parameters; scalar_t__ onlyLuma; scalar_t__ bCapturing; int /*<<< orphan*/  waitMethod; scalar_t__ demoMode; int /*<<< orphan*/  framerate; TYPE_2__ common_settings; } ;
typedef  TYPE_1__ RASPIVIDYUV_STATE ;

/* Variables and functions */
 int /*<<< orphan*/  VIDEO_FRAME_RATE_NUM ; 
 int /*<<< orphan*/  WAIT_METHOD_NONE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(RASPIVIDYUV_STATE *state)
{
   if (!state)
   {
      FUNC4(0);
      return;
   }

   // Default everything to zero
   FUNC0(state, 0, sizeof(RASPIVIDYUV_STATE));

   FUNC2(&state->common_settings);

   // Now set anything non-zero
   state->timeout = -1; // replaced with 5000ms later if unset
   state->common_settings.width = 1920;       // Default to 1080p
   state->common_settings.height = 1080;
   state->framerate = VIDEO_FRAME_RATE_NUM;
   state->demoMode = 0;
   state->demoInterval = 250; // ms
   state->waitMethod = WAIT_METHOD_NONE;
   state->onTime = 5000;
   state->offTime = 5000;
   state->bCapturing = 0;
   state->onlyLuma = 0;

   // Setup preview window defaults
   FUNC3(&state->preview_parameters);

   // Set up the camera_parameters to default
   FUNC1(&state->camera_parameters);
}