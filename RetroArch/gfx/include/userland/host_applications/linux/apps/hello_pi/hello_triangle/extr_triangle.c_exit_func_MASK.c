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
struct TYPE_2__ {int /*<<< orphan*/  tex_buf3; int /*<<< orphan*/  tex_buf2; int /*<<< orphan*/  tex_buf1; int /*<<< orphan*/  display; int /*<<< orphan*/  context; int /*<<< orphan*/  dispman_display; int /*<<< orphan*/  dispman_element; int /*<<< orphan*/  surface; int /*<<< orphan*/  tex; } ;
typedef  int /*<<< orphan*/  DISPMANX_UPDATE_HANDLE_T ;

/* Variables and functions */
 int /*<<< orphan*/  EGL_NO_CONTEXT ; 
 int /*<<< orphan*/  EGL_NO_SURFACE ; 
 int /*<<< orphan*/  GL_COLOR_BUFFER_BIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 TYPE_1__* state ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(void)
// Function to be passed to atexit().
{
   DISPMANX_UPDATE_HANDLE_T dispman_update;
   int s;
   // clear screen
   FUNC7( GL_COLOR_BUFFER_BIT );
   FUNC4(state->display, state->surface);

   FUNC8(6, state->tex);
   FUNC2( state->display, state->surface );

   dispman_update = FUNC12( 0 );
   s = FUNC11(dispman_update, state->dispman_element);
   FUNC0(s == 0);
   FUNC13( dispman_update );
   s = FUNC10(state->dispman_display);
   FUNC0 (s == 0);

   // Release OpenGL resources
   FUNC3( state->display, EGL_NO_SURFACE, EGL_NO_SURFACE, EGL_NO_CONTEXT );
   FUNC1( state->display, state->context );
   FUNC5( state->display );

   // release texture buffers
   FUNC6(state->tex_buf1);
   FUNC6(state->tex_buf2);
   FUNC6(state->tex_buf3);

   FUNC9("\ncube closed\n");
}