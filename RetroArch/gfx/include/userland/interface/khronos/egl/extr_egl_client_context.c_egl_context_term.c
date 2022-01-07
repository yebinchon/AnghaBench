
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VG_CLIENT_STATE_T ;
struct TYPE_3__ {int is_destroyed; int type; scalar_t__ state; int servercontext; int is_current; } ;
typedef int GLXX_CLIENT_STATE_T ;
typedef TYPE_1__ EGL_CONTEXT_T ;
typedef int CLIENT_THREAD_STATE_T ;


 int * CLIENT_GET_THREAD_STATE () ;
 int EGLINTDESTROYGL_ID ;
 int EGLINTDESTROYVG_ID ;



 int RPC_CALL1 (int ,int *,int ,int ) ;
 int RPC_FLUSH (int *) ;
 int RPC_UINT (int ) ;
 int UNREACHABLE () ;
 int eglIntDestroyGL_impl ;
 int eglIntDestroyVG_impl ;
 int glxx_client_state_free (int *) ;
 int vcos_assert (int) ;
 int vg_client_state_free (int *) ;

void egl_context_term(EGL_CONTEXT_T *context)
{
   CLIENT_THREAD_STATE_T *thread = CLIENT_GET_THREAD_STATE();


   vcos_assert(!context->is_current);
   vcos_assert(context->is_destroyed);

   switch (context->type) {

   case 128:
      RPC_CALL1(eglIntDestroyVG_impl,
                thread,
                EGLINTDESTROYVG_ID,
                RPC_UINT(context->servercontext));
      RPC_FLUSH(thread);
      vg_client_state_free((VG_CLIENT_STATE_T *)context->state);
      break;

   case 130:
   case 129:
       RPC_CALL1(eglIntDestroyGL_impl,
                thread,
                EGLINTDESTROYGL_ID,
                RPC_UINT(context->servercontext));
      RPC_FLUSH(thread);
      glxx_client_state_free((GLXX_CLIENT_STATE_T *)context->state);
      break;
   default:
      UNREACHABLE();
   }

   context->state = 0;
}
