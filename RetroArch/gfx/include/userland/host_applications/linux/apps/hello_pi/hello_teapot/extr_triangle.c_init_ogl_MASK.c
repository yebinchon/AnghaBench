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
struct TYPE_10__ {scalar_t__ display; scalar_t__ context; int screen_width; int screen_height; int /*<<< orphan*/  surface; } ;
struct TYPE_9__ {int width; int height; int /*<<< orphan*/  element; } ;
typedef  int EGLint ;
typedef  TYPE_2__ EGL_DISPMANX_WINDOW_T ;
typedef  int /*<<< orphan*/  EGLConfig ;
typedef  scalar_t__ EGLBoolean ;
typedef  int /*<<< orphan*/  DISPMANX_UPDATE_HANDLE_T ;
typedef  int /*<<< orphan*/  DISPMANX_ELEMENT_HANDLE_T ;
typedef  int /*<<< orphan*/  DISPMANX_DISPLAY_HANDLE_T ;
typedef  TYPE_3__ CUBE_STATE_T ;

/* Variables and functions */
 int /*<<< orphan*/  DISPMANX_PROTECTION_NONE ; 
#define  EGL_ALPHA_SIZE 136 
#define  EGL_BLUE_SIZE 135 
 int /*<<< orphan*/  EGL_DEFAULT_DISPLAY ; 
#define  EGL_DEPTH_SIZE 134 
 scalar_t__ EGL_FALSE ; 
#define  EGL_GREEN_SIZE 133 
#define  EGL_NONE 132 
 scalar_t__ EGL_NO_CONTEXT ; 
 scalar_t__ EGL_NO_DISPLAY ; 
 int /*<<< orphan*/  EGL_NO_SURFACE ; 
#define  EGL_RED_SIZE 131 
#define  EGL_SAMPLES 130 
#define  EGL_SURFACE_TYPE 129 
#define  EGL_WINDOW_BIT 128 
 int /*<<< orphan*/  GL_AMBIENT ; 
 int /*<<< orphan*/  GL_CULL_FACE ; 
 int /*<<< orphan*/  GL_DEPTH_TEST ; 
 int /*<<< orphan*/  GL_LEQUAL ; 
 int /*<<< orphan*/  GL_LIGHT0 ; 
 int /*<<< orphan*/  GL_LIGHTING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,int const*,int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC7 (float,float,float,float) ; 
 int /*<<< orphan*/  FUNC8 (double) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,float*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC17(CUBE_STATE_T *state)
{
   int32_t success = 0;
   EGLBoolean result;
   EGLint num_config;

   static EGL_DISPMANX_WINDOW_T nativewindow;

   DISPMANX_ELEMENT_HANDLE_T dispman_element;
   DISPMANX_DISPLAY_HANDLE_T dispman_display;
   DISPMANX_UPDATE_HANDLE_T dispman_update;
   VC_RECT_T dst_rect;
   VC_RECT_T src_rect;

   static const EGLint attribute_list[] =
   {
      EGL_RED_SIZE, 8,
      EGL_GREEN_SIZE, 8,
      EGL_BLUE_SIZE, 8,
      EGL_ALPHA_SIZE, 8,
      EGL_DEPTH_SIZE, 16,
      EGL_SAMPLES, 4,
      EGL_SURFACE_TYPE, EGL_WINDOW_BIT,
      EGL_NONE
   };

   EGLConfig config;

   // get an EGL display connection
   state->display = FUNC3(EGL_DEFAULT_DISPLAY);
   FUNC0(state->display!=EGL_NO_DISPLAY);

   // initialize the EGL display connection
   result = FUNC4(state->display, NULL, NULL);
   FUNC0(EGL_FALSE != result);

   // get an appropriate EGL frame buffer configuration
   // this uses a BRCM extension that gets the closest match, rather than standard which returns anything that matches
   result = FUNC6(state->display, attribute_list, &config, 1, &num_config);
   FUNC0(EGL_FALSE != result);

   // create an EGL rendering context
   state->context = FUNC1(state->display, config, EGL_NO_CONTEXT, NULL);
   FUNC0(state->context!=EGL_NO_CONTEXT);

   // create an EGL window surface
   success = FUNC12(0 /* LCD */, &state->screen_width, &state->screen_height);
   FUNC0( success >= 0 );

   dst_rect.x = 0;
   dst_rect.y = 0;
   dst_rect.width = state->screen_width;
   dst_rect.height = state->screen_height;

   src_rect.x = 0;
   src_rect.y = 0;
   src_rect.width = state->screen_width << 16;
   src_rect.height = state->screen_height << 16;

   dispman_display = FUNC13( 0 /* LCD */);
   dispman_update = FUNC15( 0 );

   dispman_element = FUNC14 ( dispman_update, dispman_display,
      0/*layer*/, &dst_rect, 0/*src*/,
      &src_rect, DISPMANX_PROTECTION_NONE, 0 /*alpha*/, 0/*clamp*/, 0/*transform*/);

   nativewindow.element = dispman_element;
   nativewindow.width = state->screen_width;
   nativewindow.height = state->screen_height;
   FUNC16( dispman_update );

   state->surface = FUNC2( state->display, config, &nativewindow, NULL );
   FUNC0(state->surface != EGL_NO_SURFACE);

   // connect the context to the surface
   result = FUNC5(state->display, state->surface, state->surface, state->context);
   FUNC0(EGL_FALSE != result);

   // Set background color and clear buffers
   FUNC7((0.3922f+7*0.5f)/8, (0.1176f+7*0.5f)/8, (0.5882f+7*0.5f)/8, 1.0f);

   // Enable back face culling.
   FUNC10(GL_CULL_FACE);

   FUNC10(GL_DEPTH_TEST);
   FUNC8(1.0);
   FUNC9(GL_LEQUAL);

   float noAmbient[] = {1.0f, 1.0f, 1.0f, 1.0f};
   FUNC11(GL_LIGHT0, GL_AMBIENT, noAmbient);
   FUNC10(GL_LIGHT0);
   FUNC10(GL_LIGHTING);
}