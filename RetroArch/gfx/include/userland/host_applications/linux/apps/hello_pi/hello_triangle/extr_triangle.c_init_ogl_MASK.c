#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32_t ;
struct TYPE_8__ {int width; int height; scalar_t__ y; scalar_t__ x; } ;
typedef  TYPE_1__ VC_RECT_T ;
struct TYPE_10__ {scalar_t__ display; scalar_t__ context; int screen_width; int screen_height; int /*<<< orphan*/  surface; int /*<<< orphan*/  dispman_element; int /*<<< orphan*/  dispman_display; } ;
struct TYPE_9__ {int width; int height; int /*<<< orphan*/  element; } ;
typedef  int EGLint ;
typedef  TYPE_2__ EGL_DISPMANX_WINDOW_T ;
typedef  int /*<<< orphan*/  EGLConfig ;
typedef  scalar_t__ EGLBoolean ;
typedef  int /*<<< orphan*/  DISPMANX_UPDATE_HANDLE_T ;
typedef  TYPE_3__ CUBE_STATE_T ;

/* Variables and functions */
 int /*<<< orphan*/  DISPMANX_PROTECTION_NONE ; 
#define  EGL_ALPHA_SIZE 134 
#define  EGL_BLUE_SIZE 133 
 int /*<<< orphan*/  EGL_DEFAULT_DISPLAY ; 
 scalar_t__ EGL_FALSE ; 
#define  EGL_GREEN_SIZE 132 
#define  EGL_NONE 131 
 scalar_t__ EGL_NO_CONTEXT ; 
 scalar_t__ EGL_NO_DISPLAY ; 
 int /*<<< orphan*/  EGL_NO_SURFACE ; 
#define  EGL_RED_SIZE 130 
#define  EGL_SURFACE_TYPE 129 
#define  EGL_WINDOW_BIT 128 
 int /*<<< orphan*/  GL_CULL_FACE ; 
 int /*<<< orphan*/  GL_MODELVIEW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__,int const*,int /*<<< orphan*/ *,int,int*) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (float,float,float,float) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15(CUBE_STATE_T *state)
{
   int32_t success = 0;
   EGLBoolean result;
   EGLint num_config;

   static EGL_DISPMANX_WINDOW_T nativewindow;

   DISPMANX_UPDATE_HANDLE_T dispman_update;
   VC_RECT_T dst_rect;
   VC_RECT_T src_rect;

   static const EGLint attribute_list[] =
   {
      EGL_RED_SIZE, 8,
      EGL_GREEN_SIZE, 8,
      EGL_BLUE_SIZE, 8,
      EGL_ALPHA_SIZE, 8,
      EGL_SURFACE_TYPE, EGL_WINDOW_BIT,
      EGL_NONE
   };

   EGLConfig config;

   // get an EGL display connection
   state->display = FUNC4(EGL_DEFAULT_DISPLAY);
   FUNC0(state->display!=EGL_NO_DISPLAY);

   // initialize the EGL display connection
   result = FUNC5(state->display, NULL, NULL);
   FUNC0(EGL_FALSE != result);

   // get an appropriate EGL frame buffer configuration
   result = FUNC1(state->display, attribute_list, &config, 1, &num_config);
   FUNC0(EGL_FALSE != result);

   // create an EGL rendering context
   state->context = FUNC2(state->display, config, EGL_NO_CONTEXT, NULL);
   FUNC0(state->context!=EGL_NO_CONTEXT);

   // create an EGL window surface
   success = FUNC10(0 /* LCD */, &state->screen_width, &state->screen_height);
   FUNC0( success >= 0 );

   dst_rect.x = 0;
   dst_rect.y = 0;
   dst_rect.width = state->screen_width;
   dst_rect.height = state->screen_height;

   src_rect.x = 0;
   src_rect.y = 0;
   src_rect.width = state->screen_width << 16;
   src_rect.height = state->screen_height << 16;

   state->dispman_display = FUNC11( 0 /* LCD */);
   dispman_update = FUNC13( 0 );

   state->dispman_element = FUNC12 ( dispman_update, state->dispman_display,
      0/*layer*/, &dst_rect, 0/*src*/,
      &src_rect, DISPMANX_PROTECTION_NONE, 0 /*alpha*/, 0/*clamp*/, 0/*transform*/);

   nativewindow.element = state->dispman_element;
   nativewindow.width = state->screen_width;
   nativewindow.height = state->screen_height;
   FUNC14( dispman_update );

   state->surface = FUNC3( state->display, config, &nativewindow, NULL );
   FUNC0(state->surface != EGL_NO_SURFACE);

   // connect the context to the surface
   result = FUNC6(state->display, state->surface, state->surface, state->context);
   FUNC0(EGL_FALSE != result);

   // Set background color and clear buffers
   FUNC7(0.15f, 0.25f, 0.35f, 1.0f);

   // Enable back face culling.
   FUNC8(GL_CULL_FACE);

   FUNC9(GL_MODELVIEW);
}