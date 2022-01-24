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
struct TYPE_2__ {int /*<<< orphan*/  display; int /*<<< orphan*/  context; int /*<<< orphan*/  surface; } ;
typedef  int /*<<< orphan*/  EGLImageKHR ;

/* Variables and functions */
 int /*<<< orphan*/  EGL_NO_CONTEXT ; 
 int /*<<< orphan*/  EGL_NO_SURFACE ; 
 int /*<<< orphan*/  GL_COLOR_BUFFER_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ eglImage ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 TYPE_1__* state ; 

__attribute__((used)) static void FUNC8(void)
// Function to be passed to atexit().
{
   if (eglImage != 0)
   {
      if (!FUNC1(state->display, (EGLImageKHR) eglImage))
         FUNC7("eglDestroyImageKHR failed.");
   }

   // clear screen
   FUNC6( GL_COLOR_BUFFER_BIT );
   FUNC4(state->display, state->surface);

   // Release OpenGL resources
   FUNC3( state->display, EGL_NO_SURFACE, EGL_NO_SURFACE, EGL_NO_CONTEXT );
   FUNC2( state->display, state->surface );
   FUNC0( state->display, state->context );
   FUNC5( state->display );

   FUNC7("\ncube closed\n");
}