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
struct TYPE_5__ {int /*<<< orphan*/  (* gl_term ) (TYPE_2__*) ;} ;
struct TYPE_6__ {scalar_t__ display; scalar_t__ context; TYPE_1__ ops; int /*<<< orphan*/  surface; int /*<<< orphan*/ * native_window; } ;
typedef  TYPE_2__ RASPITEX_STATE ;
typedef  int /*<<< orphan*/  EGLint ;
typedef  int /*<<< orphan*/  EGLConfig ;

/* Variables and functions */
 int /*<<< orphan*/  EGL_DEFAULT_DISPLAY ; 
 scalar_t__ EGL_NO_CONTEXT ; 
 scalar_t__ EGL_NO_DISPLAY ; 
 int /*<<< orphan*/  EGL_NO_SURFACE ; 
 int /*<<< orphan*/  VCOS_FUNCTION ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(RASPITEX_STATE *raspitex_state,
                                  const EGLint attribs[], const EGLint context_attribs[])
{
   EGLConfig config;
   EGLint num_configs;

   FUNC9("%s", VCOS_FUNCTION);

   if (raspitex_state->native_window == NULL)
   {
      FUNC8("%s: No native window", VCOS_FUNCTION);
      goto error;
   }

   raspitex_state->display = FUNC3(EGL_DEFAULT_DISPLAY);
   if (raspitex_state->display == EGL_NO_DISPLAY)
   {
      FUNC8("%s: Failed to get EGL display", VCOS_FUNCTION);
      goto error;
   }

   if (! FUNC5(raspitex_state->display, 0, 0))
   {
      FUNC8("%s: eglInitialize failed", VCOS_FUNCTION);
      goto error;
   }

   if (! FUNC0(raspitex_state->display, attribs, &config,
                         1, &num_configs))
   {
      FUNC8("%s: eglChooseConfig failed", VCOS_FUNCTION);
      goto error;
   }

   raspitex_state->surface = FUNC2(raspitex_state->display,
                             config, raspitex_state->native_window, NULL);
   if (raspitex_state->surface == EGL_NO_SURFACE)
   {
      FUNC8("%s: eglCreateWindowSurface failed", VCOS_FUNCTION);
      goto error;
   }

   raspitex_state->context = FUNC1(raspitex_state->display,
                             config, EGL_NO_CONTEXT, context_attribs);
   if (raspitex_state->context == EGL_NO_CONTEXT)
   {
      FUNC8("%s: eglCreateContext failed", VCOS_FUNCTION);
      goto error;
   }

   if (!FUNC6(raspitex_state->display, raspitex_state->surface,
                       raspitex_state->surface, raspitex_state->context))
   {
      FUNC8("%s: Failed to activate EGL context", VCOS_FUNCTION);
      goto error;
   }

   return 0;

error:
   FUNC8("%s: EGL error 0x%08x", VCOS_FUNCTION, FUNC4());
   raspitex_state->ops.gl_term(raspitex_state);
   return -1;
}