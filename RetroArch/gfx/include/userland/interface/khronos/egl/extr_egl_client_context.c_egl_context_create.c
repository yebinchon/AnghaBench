
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * shared_state; } ;
typedef TYPE_1__ VG_CLIENT_STATE_T ;
typedef int VG_CLIENT_SHARED_STATE_T ;
struct TYPE_8__ {int type; int is_current; int is_destroyed; void* servercontext; int * state; int renderbuffer; int configname; int display; int name; } ;
typedef int GLXX_CLIENT_STATE_T ;
typedef int EGL_CONTEXT_TYPE_T ;
typedef TYPE_2__ EGL_CONTEXT_T ;
typedef int EGLDisplay ;
typedef int EGLContext ;
typedef int EGLConfig ;
typedef int CLIENT_THREAD_STATE_T ;


 int * CLIENT_GET_THREAD_STATE () ;
 int EGLINTCREATEGLES11_ID ;
 int EGLINTCREATEGLES20_ID ;
 int EGLINTCREATEVG_ID ;
 int EGL_NONE ;



 int RPC_CALL2_RES (int ,int *,int ,void*,int const) ;
 void* RPC_UINT_RES (int ) ;
 int UNREACHABLE () ;
 int eglIntCreateGLES11_impl ;
 int eglIntCreateGLES20_impl ;
 int eglIntCreateVG_impl ;
 int gl11_client_state_init (int *) ;
 int gl20_client_state_init (int *) ;
 int glxx_client_state_free (int *) ;
 int khrn_platform_free (TYPE_2__*) ;
 scalar_t__ khrn_platform_malloc (int,char*) ;
 int vg_client_shared_state_acquire (int *) ;
 int * vg_client_shared_state_alloc () ;
 int vg_client_shared_state_release (int *) ;
 int * vg_client_state_alloc (int *) ;
 int vg_client_state_free (TYPE_1__*) ;

EGL_CONTEXT_T *egl_context_create(EGL_CONTEXT_T *share_context, EGLContext name, EGLDisplay display, EGLConfig configname, EGL_CONTEXT_TYPE_T type)
{
   EGL_CONTEXT_T *context = (EGL_CONTEXT_T *)khrn_platform_malloc(sizeof(EGL_CONTEXT_T), "EGL_CONTEXT_T");
   if (!context)
      return 0;

   context->name = name;
   context->display = display;
   context->configname = configname;

   context->type = type;

   context->renderbuffer = EGL_NONE;

   context->is_current = 0;
   context->is_destroyed = 0;

   switch (type) {

   case 128:
   {
      VG_CLIENT_SHARED_STATE_T *shared_state;
      if (share_context) {
         shared_state = ((VG_CLIENT_STATE_T *)share_context->state)->shared_state;
         vg_client_shared_state_acquire(shared_state);
      } else {
         shared_state = vg_client_shared_state_alloc();
         if (!shared_state) {
            khrn_platform_free(context);
            return 0;
         }
      }

      context->state = vg_client_state_alloc(shared_state);
      vg_client_shared_state_release(shared_state);
      if (!context->state) {
         khrn_platform_free(context);
         return 0;
      }

      {
      CLIENT_THREAD_STATE_T *thread = CLIENT_GET_THREAD_STATE();

      context->servercontext = RPC_UINT_RES(RPC_CALL2_RES(eglIntCreateVG_impl,
                                                             thread,
                                                             EGLINTCREATEVG_ID,
                                                             share_context ? share_context->servercontext : 0,
                                                          share_context ? share_context->type : 128 ));
      }
      if (!context->servercontext) {
         vg_client_state_free((VG_CLIENT_STATE_T *)context->state);
         khrn_platform_free(context);
         return 0;
      }

      break;
   }

   case 130:
   {
      GLXX_CLIENT_STATE_T *state = (GLXX_CLIENT_STATE_T *)khrn_platform_malloc(sizeof(GLXX_CLIENT_STATE_T), "GLXX_CLIENT_STATE_T");
      if (!state) {
         khrn_platform_free(context);
         return 0;
      }

      context->state = state;
      if (gl11_client_state_init(state)) {
         CLIENT_THREAD_STATE_T *thread = CLIENT_GET_THREAD_STATE();
         context->servercontext = RPC_UINT_RES(RPC_CALL2_RES(eglIntCreateGLES11_impl,
                                                             thread,
                                                             EGLINTCREATEGLES11_ID,
                                                             share_context ? share_context->servercontext : 0,
                                                             share_context ? share_context->type : 130 ));
         if (!context->servercontext) {
            glxx_client_state_free(state);
            khrn_platform_free(context);
            return 0;
         }
      }
      break;
   }
   case 129:
   {
      GLXX_CLIENT_STATE_T *state = (GLXX_CLIENT_STATE_T *)khrn_platform_malloc(sizeof(GLXX_CLIENT_STATE_T), "GLXX_CLIENT_STATE_T");
      if (!state) {
         khrn_platform_free(context);
         return 0;
      }

      context->state = state;

      if (gl20_client_state_init(state)) {
         CLIENT_THREAD_STATE_T *thread = CLIENT_GET_THREAD_STATE();
         context->servercontext = RPC_UINT_RES(RPC_CALL2_RES(eglIntCreateGLES20_impl,
                                                             thread,
                                                             EGLINTCREATEGLES20_ID,
                                                             share_context ? share_context->servercontext : 0,
                                                             share_context ? share_context->type : 129 ));
         if (!context->servercontext) {
            glxx_client_state_free(state);
            khrn_platform_free(context);
            return 0;
         }
      }
      break;
   }
   default:
      UNREACHABLE();
      break;
   }

   return context;
}
