#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_7__ {int /*<<< orphan*/  disp; } ;
struct TYPE_6__ {TYPE_1__* res; scalar_t__ context; scalar_t__ read_surface; scalar_t__ draw_surface; int /*<<< orphan*/  api; } ;
struct TYPE_5__ {scalar_t__ context_bound; } ;
typedef  TYPE_2__ GX_CLIENT_STATE_T ;
typedef  int /*<<< orphan*/  EGLBoolean ;

/* Variables and functions */
 scalar_t__ EGL_NO_CONTEXT ; 
 scalar_t__ EGL_NO_SURFACE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__ display ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(GX_CLIENT_STATE_T *state)
{
   EGLBoolean egl_result;

   FUNC0("gx_priv_restore: eglMakeCurrent: %s, res %x draw_surface %x, surface %x, cxt %x", FUNC6(FUNC5()),
      (uint32_t)state->res, (uint32_t)state->draw_surface, (uint32_t)state->read_surface, (uint32_t)state->context);

   // disconnect our thread from this context, so we other threads can use it via
   // this API
   egl_result = FUNC2(display.disp, EGL_NO_SURFACE, EGL_NO_SURFACE, EGL_NO_CONTEXT);
   FUNC3(egl_result);

   // now return to the client's API binding
   egl_result = FUNC1(state->api);
   FUNC3(egl_result);

   egl_result = FUNC2(display.disp, state->draw_surface, state->read_surface, state->context);
   FUNC3(egl_result);

   if (state->res) state->res->context_bound = 0;

   FUNC4(&lock);
}