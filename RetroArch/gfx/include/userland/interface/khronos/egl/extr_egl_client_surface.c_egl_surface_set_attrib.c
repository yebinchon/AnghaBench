
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mipmap_level; int swap_behavior; int multisample_resolve; int serverbuffer; int type; } ;
typedef int EGLint ;
typedef TYPE_1__ EGL_SURFACE_T ;
typedef int CLIENT_THREAD_STATE_T ;


 int * CLIENT_GET_THREAD_STATE () ;
 int EGLINTSELECTMIPMAP_ID ;
 int EGL_BAD_ATTRIBUTE ;
 int EGL_BAD_PARAMETER ;






 int EGL_SUCCESS ;

 int PBUFFER ;
 int RPC_CALL2 (int ,int *,int ,int ,int ) ;
 int RPC_INT (int) ;
 int RPC_UINT (int ) ;
 int eglIntSelectMipmap_impl ;

EGLint egl_surface_set_attrib(EGL_SURFACE_T *surface, EGLint attrib, EGLint value)
{
   CLIENT_THREAD_STATE_T *thread = CLIENT_GET_THREAD_STATE();
   switch (attrib) {
   case 132:
      if (surface->type == PBUFFER) {
         RPC_CALL2(eglIntSelectMipmap_impl,
                   thread,
                   EGLINTSELECTMIPMAP_ID,
                   RPC_UINT(surface->serverbuffer),
                   RPC_INT(value));

         surface->mipmap_level = value;
      }
      return EGL_SUCCESS;
   case 128:
      switch (value) {
      case 133:
      case 134:
         surface->swap_behavior = value;
         return EGL_SUCCESS;
      default:
         return EGL_BAD_PARAMETER;
      }
   case 131:
      switch (value) {
      case 129:
      case 130:
         surface->multisample_resolve = value;
         return EGL_SUCCESS;
      default:
         return EGL_BAD_PARAMETER;
      }
   default:
      return EGL_BAD_ATTRIBUTE;
   }
}
