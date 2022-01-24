#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  display; int /*<<< orphan*/  surface; int /*<<< orphan*/  context; void* v_egl_image; int /*<<< orphan*/  v_texture; void* u_egl_image; int /*<<< orphan*/  u_texture; void* y_egl_image; int /*<<< orphan*/  y_texture; void* egl_image; int /*<<< orphan*/  texture; } ;
typedef  TYPE_1__ RASPITEX_STATE ;

/* Variables and functions */
 int /*<<< orphan*/  EGL_NO_CONTEXT ; 
 void* EGL_NO_IMAGE_KHR ; 
 int /*<<< orphan*/  EGL_NO_SURFACE ; 
 int /*<<< orphan*/  VCOS_FUNCTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 

void FUNC7(RASPITEX_STATE *raspitex_state)
{
   FUNC6("%s", VCOS_FUNCTION);

   /* Delete OES textures */
   FUNC5(1, &raspitex_state->texture);
   FUNC1(raspitex_state->display, raspitex_state->egl_image);
   raspitex_state->egl_image = EGL_NO_IMAGE_KHR;

   FUNC5(1, &raspitex_state->y_texture);
   FUNC1(raspitex_state->display, raspitex_state->y_egl_image);
   raspitex_state->y_egl_image = EGL_NO_IMAGE_KHR;

   FUNC5(1, &raspitex_state->u_texture);
   FUNC1(raspitex_state->display, raspitex_state->u_egl_image);
   raspitex_state->u_egl_image = EGL_NO_IMAGE_KHR;

   FUNC5(1, &raspitex_state->v_texture);
   FUNC1(raspitex_state->display, raspitex_state->v_egl_image);
   raspitex_state->v_egl_image = EGL_NO_IMAGE_KHR;

   /* Terminate EGL */
   FUNC3(raspitex_state->display, EGL_NO_SURFACE,
                  EGL_NO_SURFACE, EGL_NO_CONTEXT);
   FUNC0(raspitex_state->display, raspitex_state->context);
   FUNC2(raspitex_state->display, raspitex_state->surface);
   FUNC4(raspitex_state->display);
}