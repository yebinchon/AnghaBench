
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int renderbuffer; int type; int configname; } ;
typedef int EGLint ;
typedef TYPE_1__ EGL_CONTEXT_T ;
typedef int EGLBoolean ;





 int EGL_FALSE ;
 int EGL_OPENGL_ES_API ;
 int EGL_OPENVG_API ;

 int EGL_TRUE ;



 int UNREACHABLE () ;

EGLBoolean egl_context_get_attrib(EGL_CONTEXT_T *context, EGLint attrib, EGLint *value)
{
   switch (attrib) {
   case 134:
      *value = (int)(intptr_t)context->configname;
      return EGL_TRUE;
   case 133:
      switch (context->type) {
      case 130:
      case 129:
         *value = EGL_OPENGL_ES_API;
         break;
      case 128:
         *value = EGL_OPENVG_API;
         break;
      default:
         UNREACHABLE();
         break;
      }
      return EGL_TRUE;
   case 132:
      switch (context->type) {
      case 130:
      case 128:
         *value = 1;
         break;
      case 129:
         *value = 2;
         break;
      default:
         UNREACHABLE();
         break;
      }
      return EGL_TRUE;
   case 131:
   {

      *value = context->renderbuffer;
      return EGL_TRUE;
   }
   default:
      return EGL_FALSE;
   }
}
