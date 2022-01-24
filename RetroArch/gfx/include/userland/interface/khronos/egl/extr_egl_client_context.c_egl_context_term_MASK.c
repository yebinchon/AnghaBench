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
typedef  int /*<<< orphan*/  VG_CLIENT_STATE_T ;
struct TYPE_3__ {int is_destroyed; int type; scalar_t__ state; int /*<<< orphan*/  servercontext; int /*<<< orphan*/  is_current; } ;
typedef  int /*<<< orphan*/  GLXX_CLIENT_STATE_T ;
typedef  TYPE_1__ EGL_CONTEXT_T ;
typedef  int /*<<< orphan*/  CLIENT_THREAD_STATE_T ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  EGLINTDESTROYGL_ID ; 
 int /*<<< orphan*/  EGLINTDESTROYVG_ID ; 
#define  OPENGL_ES_11 130 
#define  OPENGL_ES_20 129 
#define  OPENVG 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  eglIntDestroyGL_impl ; 
 int /*<<< orphan*/  eglIntDestroyVG_impl ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(EGL_CONTEXT_T *context)
{
   CLIENT_THREAD_STATE_T *thread = FUNC0();
   /* If we're current then there should still be a reference to us */
   /* (if this wasn't the case we should call egl_context_release_surfaces here) */
   FUNC6(!context->is_current);
   FUNC6(context->is_destroyed);

   switch (context->type) {
#ifndef NO_OPENVG
   case OPENVG:
      FUNC1(eglIntDestroyVG_impl,
                thread,
                EGLINTDESTROYVG_ID,
                FUNC3(context->servercontext));
      FUNC2(thread);
      FUNC7((VG_CLIENT_STATE_T *)context->state);
      break;
#endif
   case OPENGL_ES_11:
   case OPENGL_ES_20:
       FUNC1(eglIntDestroyGL_impl,
                thread,
                EGLINTDESTROYGL_ID,
                FUNC3(context->servercontext));
      FUNC2(thread);
      FUNC5((GLXX_CLIENT_STATE_T *)context->state);
      break;
   default:
      FUNC4();
   }

   context->state = 0;
}