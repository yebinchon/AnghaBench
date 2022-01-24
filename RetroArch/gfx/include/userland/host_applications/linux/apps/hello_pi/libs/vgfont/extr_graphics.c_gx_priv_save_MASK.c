#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_8__ {int /*<<< orphan*/  disp; } ;
struct TYPE_7__ {scalar_t__ magic; int context_bound; scalar_t__ context; scalar_t__ surface; } ;
struct TYPE_6__ {int api; TYPE_2__* res; void* draw_surface; void* read_surface; int /*<<< orphan*/  context; } ;
typedef  TYPE_1__ GX_CLIENT_STATE_T ;
typedef  TYPE_2__* GRAPHICS_RESOURCE_HANDLE ;
typedef  int EGLBoolean ;

/* Variables and functions */
 int /*<<< orphan*/  EGL_DRAW ; 
 int /*<<< orphan*/  EGL_OPENVG_API ; 
 int /*<<< orphan*/  EGL_READ ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ RES_MAGIC ; 
 TYPE_5__ display ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  lock ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

void FUNC10(GX_CLIENT_STATE_T *state, GRAPHICS_RESOURCE_HANDLE res)
{
   EGLBoolean egl_result;
   FUNC6(res == NULL || (res->magic == RES_MAGIC));
   FUNC6(res == NULL || !res->context_bound);

   state->context      = FUNC2();
   state->api          = FUNC5();
   state->read_surface = FUNC3(EGL_READ);
   state->draw_surface = FUNC3(EGL_DRAW);
   state->res = res;

   FUNC6(state->api); // should never be anything other than VG or GL

   FUNC7(&lock);

   egl_result = FUNC1(EGL_OPENVG_API);
   FUNC6(egl_result);

   if (res)
   {
      FUNC0("gx_priv_save: eglMakeCurrent: %s, res %x surface %x, cxt %x", FUNC9(FUNC8()),
         (uint32_t)res, (uint32_t)res->surface, (uint32_t)res->context);

      egl_result = FUNC4(display.disp, res->surface,
                                  res->surface, res->context);
      FUNC6(egl_result);

      res->context_bound = 1;
   }
}