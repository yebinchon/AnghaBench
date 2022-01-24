#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; TYPE_1__* scene_state; } ;
struct TYPE_8__ {int /*<<< orphan*/  model; int /*<<< orphan*/  screen_height; int /*<<< orphan*/  screen_width; } ;
typedef  TYPE_1__ TEAPOT_STATE_T ;
typedef  TYPE_2__ RASPITEX_STATE ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 

__attribute__((used)) static int FUNC6(RASPITEX_STATE *raspitex_state)
{
   const char *model_path = "/opt/vc/src/hello_pi/hello_teapot/teapot.obj.dat";
   TEAPOT_STATE_T *state = NULL;
   int rc = 0;

   // Clear scene state
   state = FUNC0(1, sizeof(TEAPOT_STATE_T));
   raspitex_state->scene_state = state;
   state->screen_width = raspitex_state->width;
   state->screen_height = raspitex_state->height;

   rc = FUNC4(raspitex_state);
   if (rc != 0)
      goto end;

   // Start OGLES
   FUNC2(state);

   // Setup the model world
   FUNC1(state);
   state->model = FUNC3(model_path, NULL);

   if (! state->model)
   {
      FUNC5("Failed to load model from %s\n", model_path);
      rc = -1;
   }

end:
   return rc;
}