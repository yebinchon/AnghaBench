#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int timeout; int /*<<< orphan*/  camera_parameters; int /*<<< orphan*/  preview_parameters; scalar_t__ onlyLuma; scalar_t__ burstCaptureMode; int /*<<< orphan*/  frameNextMethod; scalar_t__ fullResPreview; int /*<<< orphan*/ * linkname; scalar_t__ timelapse; int /*<<< orphan*/  common_settings; } ;
typedef  TYPE_1__ RASPISTILLYUV_STATE ;

/* Variables and functions */
 int /*<<< orphan*/  FRAME_NEXT_SINGLE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(RASPISTILLYUV_STATE *state)
{
   if (!state)
   {
      FUNC4(0);
      return;
   }

   // Default everything to zero
   FUNC0(state, 0, sizeof(RASPISTILLYUV_STATE));

   FUNC2(&state->common_settings);

   // Now set anything non-zero
   state->timeout = -1; // replaced with 5000ms later if unset
   state->timelapse = 0;
   state->linkname = NULL;
   state->fullResPreview = 0;
   state->frameNextMethod = FRAME_NEXT_SINGLE;
   state->burstCaptureMode=0;
   state->onlyLuma = 0;

   // Setup preview window defaults
   FUNC3(&state->preview_parameters);

   // Set up the camera_parameters to default
   FUNC1(&state->camera_parameters);
}