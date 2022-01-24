#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  model; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 TYPE_1__* state ; 
 int /*<<< orphan*/  terminate ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

int FUNC10 ()
{
   FUNC0();
   FUNC7("Note: ensure you have sufficient gpu_mem configured\n");

   // Clear application state
   FUNC6( state, 0, sizeof( *state ) );

   // Start OGLES
   FUNC3(state);

   // Setup the model world
   FUNC2(state);

   // initialise the OGLES texture(s)
   FUNC4(state);

   //state->model = cube_wavefront();
   state->model = FUNC5("/opt/vc/src/hello_pi/hello_teapot/teapot.obj.dat", NULL);

   while (!terminate)
   {
      FUNC9(state);
      FUNC8(state);
   }
   FUNC1();
   return 0;
}