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
struct TYPE_4__ {int /*<<< orphan*/  texture; int /*<<< orphan*/  context; int /*<<< orphan*/  surface; int /*<<< orphan*/  display; } ;
typedef  TYPE_1__ VIDTEX_T ;
typedef  int EGLint ;
typedef  int /*<<< orphan*/  EGLNativeWindowType ;
typedef  int /*<<< orphan*/  EGLConfig ;

/* Variables and functions */
 int EGL_BLUE_SIZE ; 
 int /*<<< orphan*/  EGL_DEFAULT_DISPLAY ; 
 int EGL_DEPTH_SIZE ; 
 int EGL_GREEN_SIZE ; 
 int EGL_NONE ; 
 int EGL_RED_SIZE ; 
 int /*<<< orphan*/  GL_DITHER ; 
 int /*<<< orphan*/  GL_FLAT ; 
 int /*<<< orphan*/  GL_SCISSOR_TEST ; 
 int /*<<< orphan*/  GL_TEXTURE_2D ; 
 int /*<<< orphan*/  GL_TEXTURE_EXTERNAL_OES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int const*,int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC11(VIDTEX_T *vt, EGLNativeWindowType win)
{
   const EGLint attribs[] =
   {
      EGL_RED_SIZE,   8,
      EGL_GREEN_SIZE, 8,
      EGL_BLUE_SIZE,  8,
      EGL_DEPTH_SIZE, 0,
      EGL_NONE
   };
   EGLConfig config;
   EGLint num_configs;

   vt->display = FUNC3(EGL_DEFAULT_DISPLAY);
   FUNC4(vt->display, 0, 0);

   FUNC0(vt->display, attribs, &config, 1, &num_configs);

   vt->surface = FUNC2(vt->display, config, win, NULL);
   vt->context = FUNC1(vt->display, config, NULL, NULL);

   if (!FUNC5(vt->display, vt->surface, vt->surface, vt->context))
   {
      FUNC10(vt);
      return -1;
   }

   FUNC8(1, &vt->texture);

   FUNC9(GL_FLAT);
   FUNC6(GL_DITHER);
   FUNC6(GL_SCISSOR_TEST);
   FUNC7(GL_TEXTURE_EXTERNAL_OES);
   FUNC6(GL_TEXTURE_2D);

   return 0;
}