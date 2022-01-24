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
struct TYPE_7__ {int width; int height; } ;
struct TYPE_6__ {scalar_t__ nextWaitMethod; char* description; } ;
struct TYPE_5__ {int framerate; int timeout; scalar_t__ waitMethod; int /*<<< orphan*/  camera_parameters; int /*<<< orphan*/  preview_parameters; int /*<<< orphan*/  bCapturing; TYPE_3__ common_settings; } ;
typedef  TYPE_1__ RASPIVIDYUV_STATE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  initial_map ; 
 int /*<<< orphan*/  initial_map_size ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_2__* wait_method_description ; 
 int wait_method_description_size ; 

__attribute__((used)) static void FUNC6(RASPIVIDYUV_STATE *state)
{
   int i, size, ystride, yheight;

   if (!state)
   {
      FUNC5(0);
      return;
   }

   FUNC3(&state->common_settings);

   FUNC0(stderr, "framerate %d, time delay %d\n", state->framerate, state->timeout);

   // Calculate the individual image size
   // Y stride rounded to multiple of 32. U&V stride is Y stride/2 (ie multiple of 16).
   // Y height is padded to a 16. U/V height is Y height/2 (ie multiple of 8).

   // Y plane
   ystride = ((state->common_settings.width + 31) & ~31);
   yheight = ((state->common_settings.height + 15) & ~15);

   size = ystride * yheight;

   // U and V plane
   size += 2 * ystride/2 * yheight/2;

   FUNC0(stderr, "Sub-image size %d bytes in total.\n  Y pitch %d, Y height %d, UV pitch %d, UV Height %d\n", size, ystride, yheight, ystride/2,yheight/2);

   FUNC0(stderr, "Wait method : ");
   for (i=0; i<wait_method_description_size; i++)
   {
      if (state->waitMethod == wait_method_description[i].nextWaitMethod)
         FUNC0(stderr, "%s", wait_method_description[i].description);
   }
   FUNC0(stderr, "\nInitial state '%s'\n", FUNC2(state->bCapturing, initial_map, initial_map_size));
   FUNC0(stderr, "\n");

   FUNC4(&state->preview_parameters);
   FUNC1(&state->camera_parameters);
}