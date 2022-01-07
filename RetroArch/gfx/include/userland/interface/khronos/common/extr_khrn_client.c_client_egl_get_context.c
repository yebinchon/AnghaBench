
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_9__ {int contexts; } ;
struct TYPE_8__ {int error; } ;
struct TYPE_7__ {int is_destroyed; } ;
typedef TYPE_1__ EGL_CONTEXT_T ;
typedef scalar_t__ EGLContext ;
typedef TYPE_2__ CLIENT_THREAD_STATE_T ;
typedef TYPE_3__ CLIENT_PROCESS_STATE_T ;


 int EGL_BAD_CONTEXT ;
 scalar_t__ khrn_pointer_map_lookup (int *,int ) ;
 int vcos_assert (int) ;

EGL_CONTEXT_T *client_egl_get_context(CLIENT_THREAD_STATE_T *thread, CLIENT_PROCESS_STATE_T *process, EGLContext ctx)
{
   EGL_CONTEXT_T *context = (EGL_CONTEXT_T *)khrn_pointer_map_lookup(&process->contexts, (uint32_t)(size_t)ctx);

   vcos_assert(!context || !context->is_destroyed);

   if (!context)
      thread->error = EGL_BAD_CONTEXT;

   return context;
}
