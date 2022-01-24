#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * shared_state; } ;
typedef  TYPE_1__ VG_CLIENT_STATE_T ;
typedef  int /*<<< orphan*/  VG_CLIENT_SHARED_STATE_T ;
struct TYPE_8__ {int type; int is_current; int is_destroyed; void* servercontext; int /*<<< orphan*/ * state; int /*<<< orphan*/  renderbuffer; int /*<<< orphan*/  configname; int /*<<< orphan*/  display; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  GLXX_CLIENT_STATE_T ;
typedef  int EGL_CONTEXT_TYPE_T ;
typedef  TYPE_2__ EGL_CONTEXT_T ;
typedef  int /*<<< orphan*/  EGLDisplay ;
typedef  int /*<<< orphan*/  EGLContext ;
typedef  int /*<<< orphan*/  EGLConfig ;
typedef  int /*<<< orphan*/  CLIENT_THREAD_STATE_T ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  EGLINTCREATEGLES11_ID ; 
 int /*<<< orphan*/  EGLINTCREATEGLES20_ID ; 
 int /*<<< orphan*/  EGLINTCREATEVG_ID ; 
 int /*<<< orphan*/  EGL_NONE ; 
#define  OPENGL_ES_11 130 
#define  OPENGL_ES_20 129 
#define  OPENVG 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int const) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  eglIntCreateGLES11_impl ; 
 int /*<<< orphan*/  eglIntCreateGLES20_impl ; 
 int /*<<< orphan*/  eglIntCreateVG_impl ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (int,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 

EGL_CONTEXT_T *FUNC14(EGL_CONTEXT_T *share_context, EGLContext name, EGLDisplay display, EGLConfig configname, EGL_CONTEXT_TYPE_T type)
{
   EGL_CONTEXT_T *context = (EGL_CONTEXT_T *)FUNC8(sizeof(EGL_CONTEXT_T), "EGL_CONTEXT_T");
   if (!context)
      return 0;

   context->name = name;
   context->display = display;
   context->configname = configname;

   context->type = type;

   context->renderbuffer = EGL_NONE;

   context->is_current = false;
   context->is_destroyed = false;

   switch (type) {
#ifndef NO_OPENVG
   case OPENVG:
   {
      VG_CLIENT_SHARED_STATE_T *shared_state;
      if (share_context) {
         shared_state = ((VG_CLIENT_STATE_T *)share_context->state)->shared_state;
         FUNC9(shared_state);
      } else {
         shared_state = FUNC10();
         if (!shared_state) {
            FUNC7(context);
            return 0;
         }
      }

      context->state = FUNC12(shared_state);
      FUNC11(shared_state);
      if (!context->state) {
         FUNC7(context);
         return 0;
      }

      {
      CLIENT_THREAD_STATE_T *thread = FUNC0();
         /* uint64_t pid = khronos_platform_get_process_id(); */ /* unused */
      context->servercontext = FUNC2(FUNC1(eglIntCreateVG_impl,
                                                             thread,
                                                             EGLINTCREATEVG_ID,
                                                             share_context ? share_context->servercontext : 0,
                                                          share_context ? share_context->type : OPENVG/*ignored*/));
      }
      if (!context->servercontext) {
         FUNC13((VG_CLIENT_STATE_T *)context->state);
         FUNC7(context);
         return 0;
      }

      break;
   }
#endif /* NO_OPENVG */
   case OPENGL_ES_11:
   {
      GLXX_CLIENT_STATE_T *state = (GLXX_CLIENT_STATE_T *)FUNC8(sizeof(GLXX_CLIENT_STATE_T), "GLXX_CLIENT_STATE_T");
      if (!state) {
         FUNC7(context);
         return 0;
      }

      context->state = state;
      if (FUNC4(state)) {
         CLIENT_THREAD_STATE_T *thread = FUNC0();
         context->servercontext = FUNC2(FUNC1(eglIntCreateGLES11_impl,
                                                             thread,
                                                             EGLINTCREATEGLES11_ID,
                                                             share_context ? share_context->servercontext : 0,
                                                             share_context ? share_context->type : OPENGL_ES_11/*ignored*/));
         if (!context->servercontext) {
            FUNC6(state);
            FUNC7(context);
            return 0;
         }
      }
      break;
   }
   case OPENGL_ES_20:
   {
      GLXX_CLIENT_STATE_T *state = (GLXX_CLIENT_STATE_T *)FUNC8(sizeof(GLXX_CLIENT_STATE_T), "GLXX_CLIENT_STATE_T");
      if (!state) {
         FUNC7(context);
         return 0;
      }

      context->state = state;

      if (FUNC5(state)) {
         CLIENT_THREAD_STATE_T *thread = FUNC0();
         context->servercontext = FUNC2(FUNC1(eglIntCreateGLES20_impl,
                                                             thread,
                                                             EGLINTCREATEGLES20_ID,
                                                             share_context ? share_context->servercontext : 0,
                                                             share_context ? share_context->type : OPENGL_ES_20/*ignored*/));
         if (!context->servercontext) {
            FUNC6(state);
            FUNC7(context);
            return 0;
         }
      }
      break;
   }
   default:
      FUNC3();
      break;
   }

   return context;
}