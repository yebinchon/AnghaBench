
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* gl_term ) (TYPE_2__*) ;} ;
struct TYPE_6__ {scalar_t__ display; scalar_t__ context; TYPE_1__ ops; int surface; int * native_window; } ;
typedef TYPE_2__ RASPITEX_STATE ;
typedef int EGLint ;
typedef int EGLConfig ;


 int EGL_DEFAULT_DISPLAY ;
 scalar_t__ EGL_NO_CONTEXT ;
 scalar_t__ EGL_NO_DISPLAY ;
 int EGL_NO_SURFACE ;
 int VCOS_FUNCTION ;
 int eglChooseConfig (scalar_t__,int const*,int *,int,int *) ;
 scalar_t__ eglCreateContext (scalar_t__,int ,scalar_t__,int const*) ;
 int eglCreateWindowSurface (scalar_t__,int ,int *,int *) ;
 scalar_t__ eglGetDisplay (int ) ;
 int eglGetError () ;
 int eglInitialize (scalar_t__,int ,int ) ;
 int eglMakeCurrent (scalar_t__,int ,int ,scalar_t__) ;
 int stub1 (TYPE_2__*) ;
 int vcos_log_error (char*,int ,...) ;
 int vcos_log_trace (char*,int ) ;

__attribute__((used)) static int raspitexutil_gl_common(RASPITEX_STATE *raspitex_state,
                                  const EGLint attribs[], const EGLint context_attribs[])
{
   EGLConfig config;
   EGLint num_configs;

   vcos_log_trace("%s", VCOS_FUNCTION);

   if (raspitex_state->native_window == ((void*)0))
   {
      vcos_log_error("%s: No native window", VCOS_FUNCTION);
      goto error;
   }

   raspitex_state->display = eglGetDisplay(EGL_DEFAULT_DISPLAY);
   if (raspitex_state->display == EGL_NO_DISPLAY)
   {
      vcos_log_error("%s: Failed to get EGL display", VCOS_FUNCTION);
      goto error;
   }

   if (! eglInitialize(raspitex_state->display, 0, 0))
   {
      vcos_log_error("%s: eglInitialize failed", VCOS_FUNCTION);
      goto error;
   }

   if (! eglChooseConfig(raspitex_state->display, attribs, &config,
                         1, &num_configs))
   {
      vcos_log_error("%s: eglChooseConfig failed", VCOS_FUNCTION);
      goto error;
   }

   raspitex_state->surface = eglCreateWindowSurface(raspitex_state->display,
                             config, raspitex_state->native_window, ((void*)0));
   if (raspitex_state->surface == EGL_NO_SURFACE)
   {
      vcos_log_error("%s: eglCreateWindowSurface failed", VCOS_FUNCTION);
      goto error;
   }

   raspitex_state->context = eglCreateContext(raspitex_state->display,
                             config, EGL_NO_CONTEXT, context_attribs);
   if (raspitex_state->context == EGL_NO_CONTEXT)
   {
      vcos_log_error("%s: eglCreateContext failed", VCOS_FUNCTION);
      goto error;
   }

   if (!eglMakeCurrent(raspitex_state->display, raspitex_state->surface,
                       raspitex_state->surface, raspitex_state->context))
   {
      vcos_log_error("%s: Failed to activate EGL context", VCOS_FUNCTION);
      goto error;
   }

   return 0;

error:
   vcos_log_error("%s: EGL error 0x%08x", VCOS_FUNCTION, eglGetError());
   raspitex_state->ops.gl_term(raspitex_state);
   return -1;
}
